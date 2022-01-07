
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdio_func {int num; int dev; } ;


 int sdio_write_1 (int ,int ,unsigned int,int ) ;

void sdio_writeb(struct sdio_func *func, u8 b,
   unsigned int addr, int *err_ret) {
 *err_ret = sdio_write_1(func->dev, func->num, addr, b);
}
