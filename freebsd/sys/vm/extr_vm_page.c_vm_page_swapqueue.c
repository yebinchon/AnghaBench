
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef TYPE_1__* vm_page_t ;
typedef size_t uint8_t ;
struct vm_pagequeue {int pq_pl; } ;
struct TYPE_19__ {struct vm_pagequeue* vmd_pagequeues; } ;
struct TYPE_18__ {size_t queue; int aflags; } ;
struct TYPE_17__ {int q; } ;


 int KASSERT (int,char*) ;
 int PGA_DEQUEUE ;
 int PGA_ENQUEUED ;
 int PGA_REQUEUE ;
 size_t PQ_COUNT ;
 int TAILQ_INSERT_BEFORE (TYPE_1__*,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ __predict_true (int) ;
 TYPE_10__ plinks ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_page_aflag_set (TYPE_1__*,int) ;
 int vm_page_assert_locked (TYPE_1__*) ;
 int vm_page_pqbatch_submit (TYPE_1__*,size_t) ;
 int vm_page_pqstate_cmpset (TYPE_1__*,size_t,size_t,int ,int ) ;
 int vm_pagequeue_cnt_dec (struct vm_pagequeue*) ;
 TYPE_2__* vm_pagequeue_domain (TYPE_1__*) ;
 int vm_pagequeue_lock (struct vm_pagequeue*) ;
 int vm_pagequeue_unlock (struct vm_pagequeue*) ;

void
vm_page_swapqueue(vm_page_t m, uint8_t oldq, uint8_t newq)
{
 struct vm_pagequeue *pq;
 vm_page_t next;
 bool queued;

 KASSERT(oldq < PQ_COUNT && newq < PQ_COUNT && oldq != newq,
     ("vm_page_swapqueue: invalid queues (%d, %d)", oldq, newq));
 vm_page_assert_locked(m);

 pq = &vm_pagequeue_domain(m)->vmd_pagequeues[oldq];
 vm_pagequeue_lock(pq);






 if (__predict_false(m->queue != oldq)) {
  vm_pagequeue_unlock(pq);
  return;
 }







 if (__predict_true((m->aflags & PGA_ENQUEUED) != 0)) {
  next = TAILQ_NEXT(m, plinks.q);
  TAILQ_REMOVE(&pq->pq_pl, m, plinks.q);
  vm_page_aflag_clear(m, PGA_ENQUEUED);
  queued = 1;
 } else {
  queued = 0;
 }





 if (__predict_false(!vm_page_pqstate_cmpset(m, oldq, newq, PGA_DEQUEUE,
     PGA_REQUEUE))) {
  if (queued) {
   vm_page_aflag_set(m, PGA_ENQUEUED);
   if (next != ((void*)0))
    TAILQ_INSERT_BEFORE(next, m, plinks.q);
   else
    TAILQ_INSERT_TAIL(&pq->pq_pl, m, plinks.q);
  }
  vm_pagequeue_unlock(pq);
  return;
 }
 vm_pagequeue_cnt_dec(pq);
 vm_pagequeue_unlock(pq);
 vm_page_pqbatch_submit(m, newq);
}
