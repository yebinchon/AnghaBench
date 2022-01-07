
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {scalar_t__ fault_log_tail; scalar_t__ fault_log_head; int * fault_log; int fault_lock; int * fault_taskqueue; int fault_task; } ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int M_DEVBUF ;
 int dmar_disable_fault_intr (struct dmar_unit*) ;
 int free (int *,int ) ;
 int mtx_destroy (int *) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

void
dmar_fini_fault_log(struct dmar_unit *unit)
{

 if (unit->fault_taskqueue == ((void*)0))
  return;

 DMAR_LOCK(unit);
 dmar_disable_fault_intr(unit);
 DMAR_UNLOCK(unit);

 taskqueue_drain(unit->fault_taskqueue, &unit->fault_task);
 taskqueue_free(unit->fault_taskqueue);
 unit->fault_taskqueue = ((void*)0);
 mtx_destroy(&unit->fault_lock);

 free(unit->fault_log, M_DEVBUF);
 unit->fault_log = ((void*)0);
 unit->fault_log_head = unit->fault_log_tail = 0;
}
