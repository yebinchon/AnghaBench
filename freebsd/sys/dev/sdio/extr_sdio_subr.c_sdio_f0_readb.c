
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sdio_func {int dev; } ;


 int SDIO_READ_DIRECT (int ,int ,int ,int*) ;
 int device_get_parent (int ) ;

uint8_t
sdio_f0_readb(struct sdio_func *f, uint32_t addr, int *err)
{
 int error;
 uint8_t v;

 error = SDIO_READ_DIRECT(device_get_parent(f->dev), 0, addr, &v);
 if (error) {
  if (err != ((void*)0))
   *err = error;
  return (0xff);
 } else {
  if (err != ((void*)0))
   *err = 0;
  return (v);
 }
}
