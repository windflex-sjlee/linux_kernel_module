obj-m+=hello.o
obj-m+=hello_2.o

KSRC := /lib/modules/$(shell uname -r)/build

all:
	make -C $(KSRC) M=$(PWD) modules
clean:
	make -C $(KSRC) M=$(PWD) clean
