
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int dummy; } ;


 int EINVAL ;
 int sdio_writeb (struct sdio_func*,unsigned char,unsigned int,int*) ;

void sdio_f0_writeb(struct sdio_func *func, unsigned char b,
      unsigned int addr, int *err_ret)
{
 if (addr < 0xF0 || addr > 0xFF) {
  if (err_ret)
   *err_ret = -EINVAL;
  return;
 }
 sdio_writeb(func, b, addr, err_ret);
}
