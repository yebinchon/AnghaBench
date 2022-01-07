
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bhnd_dma_translation {int dummy; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 int BHND_BUS_GET_DMA_TRANSLATION (int *,int ,int ,int ,int *,struct bhnd_dma_translation*) ;
 int * device_get_parent (int ) ;
 int panic (char*) ;

int
bhnd_bus_generic_get_dma_translation(device_t dev, device_t child, u_int width,
    uint32_t flags, bus_dma_tag_t *dmat,
    struct bhnd_dma_translation *translation)
{
 if (device_get_parent(dev) != ((void*)0)) {
  return (BHND_BUS_GET_DMA_TRANSLATION(device_get_parent(dev),
      child, width, flags, dmat, translation));
 }

 panic("missing BHND_BUS_GET_DMA_TRANSLATION()");
}
