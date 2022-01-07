
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dma_enabled; int unit; int delayed_taskqueue; int dmamap_load_task; int delayed_maps; } ;


 int M_WAITOK ;
 int PI_DISK ;
 int TAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct dmar_unit*) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int dmar_bus_task_dmamap ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*,int ) ;
 int taskqueue_thread_enqueue ;

int
dmar_init_busdma(struct dmar_unit *unit)
{

 unit->dma_enabled = 1;
 TUNABLE_INT_FETCH("hw.dmar.dma", &unit->dma_enabled);
 TAILQ_INIT(&unit->delayed_maps);
 TASK_INIT(&unit->dmamap_load_task, 0, dmar_bus_task_dmamap, unit);
 unit->delayed_taskqueue = taskqueue_create("dmar", M_WAITOK,
     taskqueue_thread_enqueue, &unit->delayed_taskqueue);
 taskqueue_start_threads(&unit->delayed_taskqueue, 1, PI_DISK,
     "dmar%d busdma taskq", unit->unit);
 return (0);
}
