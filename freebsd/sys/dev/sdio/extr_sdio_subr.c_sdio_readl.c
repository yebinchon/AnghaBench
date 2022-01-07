
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uint8_t ;
typedef int uint32_t ;
struct sdio_func {int fn; int dev; } ;


 int SDIO_READ_EXTENDED (int ,int ,int,int,int *,int) ;
 int device_get_parent (int ) ;
 int le32toh (int) ;

uint32_t
sdio_readl(struct sdio_func *f, uint32_t addr, int *err)
{
 int error;
 uint32_t v;

 error = SDIO_READ_EXTENDED(device_get_parent(f->dev), f->fn, addr,
     sizeof(v), (uint8_t *)&v, 0);
 if (error) {
  if (err != ((void*)0))
   *err = error;
  return (0xffffffff);
 } else {
  if (err != ((void*)0))
   *err = 0;
  return (le32toh(v));
 }
}
