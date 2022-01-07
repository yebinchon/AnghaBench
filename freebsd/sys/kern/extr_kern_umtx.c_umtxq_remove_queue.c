
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_queue {scalar_t__ length; int head; } ;
struct umtxq_chain {int uc_spare_queue; int length; } ;
struct umtx_q {int uq_flags; struct umtxq_queue* uq_cur_queue; struct umtxq_queue* uq_spare_queue; int uq_key; } ;


 int KASSERT (int,char*) ;
 struct umtxq_queue* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct umtxq_queue*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct umtx_q*,int ) ;
 int UMTXQ_LOCKED_ASSERT (struct umtxq_chain*) ;
 int UQF_UMTXQ ;
 int link ;
 struct umtxq_chain* umtxq_getchain (int *) ;
 int uq_link ;

__attribute__((used)) static inline void
umtxq_remove_queue(struct umtx_q *uq, int q)
{
 struct umtxq_chain *uc;
 struct umtxq_queue *uh;

 uc = umtxq_getchain(&uq->uq_key);
 UMTXQ_LOCKED_ASSERT(uc);
 if (uq->uq_flags & UQF_UMTXQ) {
  uh = uq->uq_cur_queue;
  TAILQ_REMOVE(&uh->head, uq, uq_link);
  uh->length--;
  uq->uq_flags &= ~UQF_UMTXQ;
  if (TAILQ_EMPTY(&uh->head)) {
   KASSERT(uh->length == 0,
       ("inconsistent umtxq_queue length"));



   LIST_REMOVE(uh, link);
  } else {
   uh = LIST_FIRST(&uc->uc_spare_queue);
   KASSERT(uh != ((void*)0), ("uc_spare_queue is empty"));
   LIST_REMOVE(uh, link);
  }
  uq->uq_spare_queue = uh;
  uq->uq_cur_queue = ((void*)0);
 }
}
