
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int t_softerror; TYPE_1__* t_fb; int t_state; TYPE_2__* t_inpcb; } ;
struct socket {int so_error; } ;
struct TYPE_4__ {struct socket* inp_socket; } ;
struct TYPE_3__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int ETIMEDOUT ;
 int INP_INFO_LOCK_ASSERT (int *) ;
 int INP_WLOCK_ASSERT (TYPE_2__*) ;
 int TCPSTAT_INC (int ) ;
 int TCPS_CLOSED ;
 scalar_t__ TCPS_HAVERCVDSYN (int ) ;
 int V_tcbinfo ;
 int stub1 (struct tcpcb*) ;
 struct tcpcb* tcp_close (struct tcpcb*) ;
 int tcp_state_change (struct tcpcb*,int ) ;
 int tcps_conndrops ;
 int tcps_drops ;

struct tcpcb *
tcp_drop(struct tcpcb *tp, int errno)
{
 struct socket *so = tp->t_inpcb->inp_socket;

 INP_INFO_LOCK_ASSERT(&V_tcbinfo);
 INP_WLOCK_ASSERT(tp->t_inpcb);

 if (TCPS_HAVERCVDSYN(tp->t_state)) {
  tcp_state_change(tp, TCPS_CLOSED);
  (void) tp->t_fb->tfb_tcp_output(tp);
  TCPSTAT_INC(tcps_drops);
 } else
  TCPSTAT_INC(tcps_conndrops);
 if (errno == ETIMEDOUT && tp->t_softerror)
  errno = tp->t_softerror;
 so->so_error = errno;
 return (tcp_close(tp));
}
