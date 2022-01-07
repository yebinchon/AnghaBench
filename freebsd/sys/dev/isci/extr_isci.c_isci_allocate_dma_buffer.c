
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ISCI_MEMORY {int size; scalar_t__ virtual_address; int dma_map; int dma_tag; } ;
struct ISCI_CONTROLLER {int lock; } ;
typedef int device_t ;


 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int ISCI_DMA_BOUNDARY ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,void*,int ,int ,struct ISCI_MEMORY*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;
 int isci_allocate_dma_buffer_callback ;
 int isci_log_message (int ,char*,char*) ;

int
isci_allocate_dma_buffer(device_t device, struct ISCI_CONTROLLER *controller,
    struct ISCI_MEMORY *memory)
{
 uint32_t status;

 status = bus_dma_tag_create(bus_get_dma_tag(device),
     0x40 ,
     ISCI_DMA_BOUNDARY, BUS_SPACE_MAXADDR,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), memory->size,
     0x1 ,
     memory->size, 0, busdma_lock_mutex, &controller->lock,
     &memory->dma_tag);

 if(status == ENOMEM) {
  isci_log_message(0, "ISCI", "bus_dma_tag_create failed\n");
  return (status);
 }

 status = bus_dmamem_alloc(memory->dma_tag,
     (void **)&memory->virtual_address, BUS_DMA_ZERO, &memory->dma_map);

 if(status == ENOMEM)
 {
  isci_log_message(0, "ISCI", "bus_dmamem_alloc failed\n");
  return (status);
 }

 status = bus_dmamap_load(memory->dma_tag, memory->dma_map,
     (void *)memory->virtual_address, memory->size,
     isci_allocate_dma_buffer_callback, memory, 0);

 if(status == EINVAL)
 {
  isci_log_message(0, "ISCI", "bus_dmamap_load failed\n");
  return (status);
 }

 return (0);
}
