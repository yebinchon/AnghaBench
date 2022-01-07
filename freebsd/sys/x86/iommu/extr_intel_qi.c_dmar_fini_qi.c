
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {scalar_t__ inv_seq_waiters; scalar_t__ qi_enabled; scalar_t__ inv_queue_size; scalar_t__ inv_queue; int unit; int * qi_taskqueue; int qi_task; } ;
struct dmar_qi_genseq {int dummy; } ;


 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int KASSERT (int,char*) ;
 int dmar_disable_qi (struct dmar_unit*) ;
 int dmar_disable_qi_intr (struct dmar_unit*) ;
 int dmar_qi_advance_tail (struct dmar_unit*) ;
 int dmar_qi_emit_wait_seq (struct dmar_unit*,struct dmar_qi_genseq*,int) ;
 int dmar_qi_ensure (struct dmar_unit*,int) ;
 int dmar_qi_wait_for_seq (struct dmar_unit*,struct dmar_qi_genseq*,int) ;
 int kmem_free (scalar_t__,scalar_t__) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

void
dmar_fini_qi(struct dmar_unit *unit)
{
 struct dmar_qi_genseq gseq;

 if (!unit->qi_enabled)
  return;
 taskqueue_drain(unit->qi_taskqueue, &unit->qi_task);
 taskqueue_free(unit->qi_taskqueue);
 unit->qi_taskqueue = ((void*)0);

 DMAR_LOCK(unit);

 dmar_qi_ensure(unit, 1);
 dmar_qi_emit_wait_seq(unit, &gseq, 1);
 dmar_qi_advance_tail(unit);
 dmar_qi_wait_for_seq(unit, &gseq, 0);

 dmar_disable_qi_intr(unit);
 dmar_disable_qi(unit);
 KASSERT(unit->inv_seq_waiters == 0,
     ("dmar%d: waiters on disabled queue", unit->unit));
 DMAR_UNLOCK(unit);

 kmem_free(unit->inv_queue, unit->inv_queue_size);
 unit->inv_queue = 0;
 unit->inv_queue_size = 0;
 unit->qi_enabled = 0;
}
