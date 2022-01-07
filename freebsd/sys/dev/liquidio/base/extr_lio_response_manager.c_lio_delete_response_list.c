
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * tq; int work; } ;
struct octeon_device {TYPE_1__ dma_comp_tq; } ;


 scalar_t__ taskqueue_cancel_timeout (int *,int *,int *) ;
 int taskqueue_drain_timeout (int *,int *) ;
 int taskqueue_free (int *) ;

void
lio_delete_response_list(struct octeon_device *oct)
{

 if (oct->dma_comp_tq.tq != ((void*)0)) {
  while (taskqueue_cancel_timeout(oct->dma_comp_tq.tq,
      &oct->dma_comp_tq.work, ((void*)0)))
   taskqueue_drain_timeout(oct->dma_comp_tq.tq,
      &oct->dma_comp_tq.work);
  taskqueue_free(oct->dma_comp_tq.tq);
  oct->dma_comp_tq.tq = ((void*)0);
 }
}
