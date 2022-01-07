
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdio_func {int num; int dev; } ;


 int sdio_write_4 (int ,int ,unsigned int,int ) ;

void sdio_writel(struct sdio_func *func, u32 b,
   unsigned int addr, int *err_ret) {
 *err_ret = sdio_write_4(func->dev, func->num, addr, b);
}
