
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int th_ack; } ;
struct tcpcb {scalar_t__ t_bytes_acked; TYPE_1__* ccv; int t_inpcb; } ;
struct TYPE_4__ {int (* post_recovery ) (TYPE_1__*) ;} ;
struct TYPE_3__ {int curack; } ;


 TYPE_2__* CC_ALGO (struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;
 int stub1 (TYPE_1__*) ;

void inline
cc_post_recovery(struct tcpcb *tp, struct tcphdr *th)
{
 INP_WLOCK_ASSERT(tp->t_inpcb);



 if (CC_ALGO(tp)->post_recovery != ((void*)0)) {
  tp->ccv->curack = th->th_ack;
  CC_ALGO(tp)->post_recovery(tp->ccv);
 }

 tp->t_bytes_acked = 0;
}
