
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_queue {int length; int head; int key; } ;
struct umtxq_chain {scalar_t__ length; scalar_t__ max_length; int * uc_queue; int uc_spare_queue; } ;
struct umtx_q {int uq_flags; struct umtxq_queue* uq_cur_queue; struct umtxq_queue* uq_spare_queue; int uq_key; } ;


 int KASSERT (int,char*) ;
 int LIST_INSERT_HEAD (int *,struct umtxq_queue*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct umtx_q*,int ) ;
 int UMTXQ_LOCKED_ASSERT (struct umtxq_chain*) ;
 int UQF_UMTXQ ;
 int link ;
 scalar_t__ max_length ;
 struct umtxq_chain* umtxq_getchain (int *) ;
 struct umtxq_queue* umtxq_queue_lookup (int *,int) ;
 int uq_link ;

__attribute__((used)) static inline void
umtxq_insert_queue(struct umtx_q *uq, int q)
{
 struct umtxq_queue *uh;
 struct umtxq_chain *uc;

 uc = umtxq_getchain(&uq->uq_key);
 UMTXQ_LOCKED_ASSERT(uc);
 KASSERT((uq->uq_flags & UQF_UMTXQ) == 0, ("umtx_q is already on queue"));
 uh = umtxq_queue_lookup(&uq->uq_key, q);
 if (uh != ((void*)0)) {
  LIST_INSERT_HEAD(&uc->uc_spare_queue, uq->uq_spare_queue, link);
 } else {
  uh = uq->uq_spare_queue;
  uh->key = uq->uq_key;
  LIST_INSERT_HEAD(&uc->uc_queue[q], uh, link);
 }
 uq->uq_spare_queue = ((void*)0);

 TAILQ_INSERT_TAIL(&uh->head, uq, uq_link);
 uh->length++;
 uq->uq_flags |= UQF_UMTXQ;
 uq->uq_cur_queue = uh;
 return;
}
