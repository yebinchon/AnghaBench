
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_q {int uq_key; } ;


 int UMTXQ_LOCKED_ASSERT (int ) ;
 int umtxq_getchain (int *) ;
 int umtxq_remove (struct umtx_q*) ;
 int wakeup (struct umtx_q*) ;

__attribute__((used)) static inline void
umtxq_signal_thread(struct umtx_q *uq)
{

 UMTXQ_LOCKED_ASSERT(umtxq_getchain(&uq->uq_key));
 umtxq_remove(uq);
 wakeup(uq);
}
