
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct bhnd_dma_translation {int addr_mask; int addrext_mask; } ;
typedef int device_t ;
typedef int bus_size_t ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;
typedef int bhnd_addr_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int KASSERT (int,char*) ;
 int MIN (int,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int ,int,int ,int *,int *,int *) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bhndb_dma_tag_create(device_t dev, bus_dma_tag_t parent_dmat,
    const struct bhnd_dma_translation *translation, bus_dma_tag_t *dmat)
{
 bus_dma_tag_t translation_tag;
 bhnd_addr_t dt_mask;
 bus_addr_t lowaddr, highaddr;
 bus_size_t maxsegsz;
 int error;

 highaddr = BUS_SPACE_MAXADDR;
 maxsegsz = BUS_SPACE_MAXSIZE;


 dt_mask = (translation->addr_mask | translation->addrext_mask);
 KASSERT(dt_mask != 0, ("DMA addr_mask invalid: %#jx",
  (uintmax_t)dt_mask));


 lowaddr = MIN(dt_mask, BUS_SPACE_MAXADDR);


 if (translation->addr_mask < maxsegsz)
  maxsegsz = translation->addr_mask;


 error = bus_dma_tag_create(parent_dmat,
     1, 0,
     lowaddr, highaddr,
     ((void*)0), ((void*)0),
     BUS_SPACE_MAXSIZE, 0,
     maxsegsz, 0,
     ((void*)0), ((void*)0),
     &translation_tag);
 if (error) {
  device_printf(dev, "failed to create bridge DMA tag: %d\n",
      error);
  return (error);
 }

 *dmat = translation_tag;
 return (0);
}
