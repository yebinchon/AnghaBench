
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_queue {int head; } ;
struct umtx_q {int dummy; } ;
struct umtx_key {int dummy; } ;


 struct umtx_q* TAILQ_FIRST (int *) ;
 int UMTXQ_LOCKED_ASSERT (int ) ;
 int umtxq_getchain (struct umtx_key*) ;
 struct umtxq_queue* umtxq_queue_lookup (struct umtx_key*,int) ;
 int umtxq_remove_queue (struct umtx_q*,int) ;
 int wakeup (struct umtx_q*) ;

__attribute__((used)) static int
umtxq_signal_queue(struct umtx_key *key, int n_wake, int q)
{
 struct umtxq_queue *uh;
 struct umtx_q *uq;
 int ret;

 ret = 0;
 UMTXQ_LOCKED_ASSERT(umtxq_getchain(key));
 uh = umtxq_queue_lookup(key, q);
 if (uh != ((void*)0)) {
  while ((uq = TAILQ_FIRST(&uh->head)) != ((void*)0)) {
   umtxq_remove_queue(uq, q);
   wakeup(uq);
   if (++ret >= n_wake)
    return (ret);
  }
 }
 return (ret);
}
