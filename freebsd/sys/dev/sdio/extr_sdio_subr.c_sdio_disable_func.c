
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_func {int fn; int dev; } ;


 int SD_IO_CCCR_FN_ENABLE ;
 int sdio_set_bool_for_func (int ,int ,int ,int) ;

int
sdio_disable_func(struct sdio_func *f)
{

 return (sdio_set_bool_for_func(f->dev, SD_IO_CCCR_FN_ENABLE,
     f->fn, 0));
}
