
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdio_func {int fn; int dev; } ;


 int SDIO_WRITE_DIRECT (int ,int ,int ,int ) ;
 int device_get_parent (int ) ;

void
sdio_writeb(struct sdio_func *f, uint8_t val, uint32_t addr, int *err)
{
 int error;

 error = SDIO_WRITE_DIRECT(device_get_parent(f->dev), f->fn, addr, val);
 if (err != ((void*)0))
  *err = error;
}
