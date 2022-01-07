
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct tcphdr {int th_flags; } ;
struct tcpcb {int t_flags; TYPE_1__* ccv; int t_inpcb; } ;
struct TYPE_4__ {int (* ecnpkt_handler ) (TYPE_1__*) ;} ;
struct TYPE_3__ {int flags; } ;


 int CCF_ACKNOW ;
 int CCF_DELACK ;
 int CCF_IPHDR_CE ;
 int CCF_TCPHDR_CWR ;
 TYPE_2__* CC_ALGO (struct tcpcb*) ;
 int INP_WLOCK_ASSERT (int ) ;



 int IPTOS_ECN_MASK ;
 int TF_DELACK ;
 int TH_CWR ;
 int TT_DELACK ;
 int stub1 (TYPE_1__*) ;
 int tcp_delacktime ;
 int tcp_timer_activate (struct tcpcb*,int ,int ) ;

__attribute__((used)) static void inline
cc_ecnpkt_handler(struct tcpcb *tp, struct tcphdr *th, uint8_t iptos)
{
 INP_WLOCK_ASSERT(tp->t_inpcb);

 if (CC_ALGO(tp)->ecnpkt_handler != ((void*)0)) {
  switch (iptos & IPTOS_ECN_MASK) {
  case 130:
      tp->ccv->flags |= CCF_IPHDR_CE;
      break;
  case 129:
      tp->ccv->flags &= ~CCF_IPHDR_CE;
      break;
  case 128:
      tp->ccv->flags &= ~CCF_IPHDR_CE;
      break;
  }

  if (th->th_flags & TH_CWR)
   tp->ccv->flags |= CCF_TCPHDR_CWR;
  else
   tp->ccv->flags &= ~CCF_TCPHDR_CWR;

  if (tp->t_flags & TF_DELACK)
   tp->ccv->flags |= CCF_DELACK;
  else
   tp->ccv->flags &= ~CCF_DELACK;

  CC_ALGO(tp)->ecnpkt_handler(tp->ccv);

  if (tp->ccv->flags & CCF_ACKNOW)
   tcp_timer_activate(tp, TT_DELACK, tcp_delacktime);
 }
}
