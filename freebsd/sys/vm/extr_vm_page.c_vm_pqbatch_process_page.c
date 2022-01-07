
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int uint8_t ;
struct vm_pagequeue {int pq_pl; } ;
struct vm_domain {int vmd_inacthead; } ;
struct TYPE_14__ {int q; } ;
struct TYPE_13__ {scalar_t__ queue; int aflags; } ;


 int CRITICAL_ASSERT (int ) ;
 int KASSERT (int,char*) ;
 int PGA_DEQUEUE ;
 int PGA_ENQUEUED ;
 int PGA_QUEUE_STATE_MASK ;
 int PGA_REQUEUE ;
 int PGA_REQUEUE_HEAD ;
 scalar_t__ PQ_INACTIVE ;
 int TAILQ_INSERT_BEFORE (int *,TYPE_1__*,int ) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 scalar_t__ __predict_true (int) ;
 int atomic_load_8 (int *) ;
 int counter_u64_add (int ,int) ;
 int curthread ;
 TYPE_9__ plinks ;
 int queue_nops ;
 int queue_ops ;
 int vm_page_aflag_clear (TYPE_1__*,int) ;
 int vm_page_aflag_set (TYPE_1__*,int) ;
 int vm_page_dequeue_complete (TYPE_1__*) ;
 struct vm_pagequeue* vm_page_pagequeue (TYPE_1__*) ;
 int vm_pagequeue_assert_locked (struct vm_pagequeue*) ;
 int vm_pagequeue_cnt_inc (struct vm_pagequeue*) ;
 struct vm_domain* vm_pagequeue_domain (TYPE_1__*) ;
 int vm_pagequeue_remove (struct vm_pagequeue*,TYPE_1__*) ;

__attribute__((used)) static inline void
vm_pqbatch_process_page(struct vm_pagequeue *pq, vm_page_t m)
{
 struct vm_domain *vmd;
 uint8_t qflags;

 CRITICAL_ASSERT(curthread);
 vm_pagequeue_assert_locked(pq);






 qflags = atomic_load_8(&m->aflags);
 KASSERT(pq == vm_page_pagequeue(m) ||
     (qflags & PGA_QUEUE_STATE_MASK) == 0,
     ("page %p doesn't belong to queue %p but has aflags %#x",
     m, pq, qflags));

 if ((qflags & PGA_DEQUEUE) != 0) {
  if (__predict_true((qflags & PGA_ENQUEUED) != 0))
   vm_pagequeue_remove(pq, m);
  vm_page_dequeue_complete(m);
  counter_u64_add(queue_ops, 1);
 } else if ((qflags & (PGA_REQUEUE | PGA_REQUEUE_HEAD)) != 0) {
  if ((qflags & PGA_ENQUEUED) != 0)
   TAILQ_REMOVE(&pq->pq_pl, m, plinks.q);
  else {
   vm_pagequeue_cnt_inc(pq);
   vm_page_aflag_set(m, PGA_ENQUEUED);
  }







  if ((qflags & PGA_REQUEUE_HEAD) != 0) {
   KASSERT(m->queue == PQ_INACTIVE,
       ("head enqueue not supported for page %p", m));
   vmd = vm_pagequeue_domain(m);
   TAILQ_INSERT_BEFORE(&vmd->vmd_inacthead, m, plinks.q);
  } else
   TAILQ_INSERT_TAIL(&pq->pq_pl, m, plinks.q);

  vm_page_aflag_clear(m, qflags & (PGA_REQUEUE |
      PGA_REQUEUE_HEAD));
  counter_u64_add(queue_ops, 1);
 } else {
  counter_u64_add(queue_nops, 1);
 }
}
