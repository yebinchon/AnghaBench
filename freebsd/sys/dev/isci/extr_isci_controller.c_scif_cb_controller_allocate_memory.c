
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ISCI_CONTROLLER {int buffer_dma_tag; int unmap_buffer_pool; } ;
struct TYPE_3__ {int physical_address; int * virtual_address; int constant_memory_alignment; } ;
typedef TYPE_1__ SCI_PHYSICAL_MEMORY_DESCRIPTOR_T ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int M_ISCI ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 int bus_dmamap_load (int ,int *,int *,int ,int ,int *,int ) ;
 int * contigmalloc (int ,int ,int ,int ,int ,int ,int ) ;
 int isci_single_map ;
 scalar_t__ sci_object_get_association (int ) ;
 int sci_pool_empty (int ) ;
 int sci_pool_get (int ,int *) ;

void scif_cb_controller_allocate_memory(SCI_CONTROLLER_HANDLE_T controller,
    SCI_PHYSICAL_MEMORY_DESCRIPTOR_T *mde)
{
 struct ISCI_CONTROLLER *isci_controller = (struct ISCI_CONTROLLER *)
     sci_object_get_association(controller);
 if (!sci_pool_empty(isci_controller->unmap_buffer_pool)) {
  sci_pool_get(isci_controller->unmap_buffer_pool,
      mde->virtual_address);
 } else
  mde->virtual_address = contigmalloc(PAGE_SIZE,
      M_ISCI, M_NOWAIT, 0, BUS_SPACE_MAXADDR,
      mde->constant_memory_alignment, 0);

 if (mde->virtual_address != ((void*)0))
  bus_dmamap_load(isci_controller->buffer_dma_tag,
      ((void*)0), mde->virtual_address, PAGE_SIZE,
      isci_single_map, &mde->physical_address,
      BUS_DMA_NOWAIT);
}
