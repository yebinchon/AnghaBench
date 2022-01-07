
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_REQUEST {int timer; int dma_map; int dma_tag; int physical_address; int controller_handle; } ;
typedef int bus_dma_tag_t ;
typedef int bus_addr_t ;
typedef int SCI_CONTROLLER_HANDLE_T ;


 int bus_dmamap_create (int ,int ,int *) ;
 int callout_init (int *,int) ;

void
isci_request_construct(struct ISCI_REQUEST *request,
    SCI_CONTROLLER_HANDLE_T scif_controller_handle,
    bus_dma_tag_t io_buffer_dma_tag, bus_addr_t physical_address)
{

 request->controller_handle = scif_controller_handle;
 request->dma_tag = io_buffer_dma_tag;
 request->physical_address = physical_address;
 bus_dmamap_create(request->dma_tag, 0, &request->dma_map);
 callout_init(&request->timer, 1);
}
