
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;


 unsigned char sdio_readb (struct sdio_func*,unsigned int,int*) ;

unsigned char sdio_f0_readb(struct sdio_func *func, unsigned int addr, int *err_ret) {
 return sdio_readb(func, addr, err_ret);
}
