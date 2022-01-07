
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct aoa_dma {int slot; int blksz; int running; } ;
typedef int kobj_t ;



__attribute__((used)) static u_int32_t
aoa_chan_getptr(kobj_t obj, void *data)
{
 struct aoa_dma *dma = data;

 if (!dma->running)
  return (0);

 return (dma->slot * dma->blksz);
}
