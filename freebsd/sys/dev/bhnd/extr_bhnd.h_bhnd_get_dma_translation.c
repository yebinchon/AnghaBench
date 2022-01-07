
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct bhnd_dma_translation {int dummy; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 int BHND_BUS_GET_DMA_TRANSLATION (int ,int ,int ,int ,int *,struct bhnd_dma_translation*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static inline int
bhnd_get_dma_translation(device_t dev, u_int width, uint32_t flags,
    bus_dma_tag_t *dmat, struct bhnd_dma_translation *translation)
{
 return (BHND_BUS_GET_DMA_TRANSLATION(device_get_parent(dev), dev, width,
     flags, dmat, translation));
}
