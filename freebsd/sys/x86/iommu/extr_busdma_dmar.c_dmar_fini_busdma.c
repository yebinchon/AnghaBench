
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int * delayed_taskqueue; int dmamap_load_task; } ;


 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

void
dmar_fini_busdma(struct dmar_unit *unit)
{

 if (unit->delayed_taskqueue == ((void*)0))
  return;

 taskqueue_drain(unit->delayed_taskqueue, &unit->dmamap_load_task);
 taskqueue_free(unit->delayed_taskqueue);
 unit->delayed_taskqueue = ((void*)0);
}
