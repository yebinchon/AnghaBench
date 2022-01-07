
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int t_state; TYPE_1__* t_inpcb; int t_flags; } ;
struct TYPE_2__ {int inp_socket; } ;


 int INP_WLOCK_ASSERT (TYPE_1__*) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ASSERT () ;



 int TCPS_FIN_WAIT_1 ;
 int TCPS_FIN_WAIT_2 ;
 int TCPS_LAST_ACK ;



 int TF_NEEDFIN ;
 int TP_MAXIDLE (struct tcpcb*) ;
 int TT_2MSL ;
 int soisdisconnected (int ) ;
 struct tcpcb* tcp_close (struct tcpcb*) ;
 scalar_t__ tcp_fast_finwait2_recycle ;
 int tcp_finwait2_timeout ;
 int tcp_offload_listen_stop (struct tcpcb*) ;
 int tcp_state_change (struct tcpcb*,int) ;
 int tcp_timer_activate (struct tcpcb*,int ,int) ;

__attribute__((used)) static void
tcp_usrclosed(struct tcpcb *tp)
{

 NET_EPOCH_ASSERT();
 INP_WLOCK_ASSERT(tp->t_inpcb);

 switch (tp->t_state) {
 case 130:



  tcp_state_change(tp, 133);

 case 133:
  tp = tcp_close(tp);




  KASSERT(tp != ((void*)0),
      ("tcp_usrclosed: tcp_close() returned NULL"));
  break;

 case 128:
 case 129:
  tp->t_flags |= TF_NEEDFIN;
  break;

 case 131:
  tcp_state_change(tp, TCPS_FIN_WAIT_1);
  break;

 case 132:
  tcp_state_change(tp, TCPS_LAST_ACK);
  break;
 }
 if (tp->t_state >= TCPS_FIN_WAIT_2) {
  soisdisconnected(tp->t_inpcb->inp_socket);

  if (tp->t_state == TCPS_FIN_WAIT_2) {
   int timeout;

   timeout = (tcp_fast_finwait2_recycle) ?
       tcp_finwait2_timeout : TP_MAXIDLE(tp);
   tcp_timer_activate(tp, TT_2MSL, timeout);
  }
 }
}
