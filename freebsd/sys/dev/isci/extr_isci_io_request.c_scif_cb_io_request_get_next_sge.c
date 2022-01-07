
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ISCI_IO_REQUEST {size_t current_sge_index; size_t num_segments; int * sge; } ;
typedef int bus_dma_segment_t ;



void
scif_cb_io_request_get_next_sge(void * scif_user_io_request,
    void * current_sge_address, void ** next_sge)
{
 struct ISCI_IO_REQUEST *isci_request =
     (struct ISCI_IO_REQUEST *)scif_user_io_request;

 if (isci_request->current_sge_index == isci_request->num_segments)
  *next_sge = ((void*)0);
 else {
  bus_dma_segment_t *sge =
      &isci_request->sge[isci_request->current_sge_index];

  isci_request->current_sge_index++;
  *next_sge = sge;
 }
}
