
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_state; int * t_tfo_pending; struct inpcb* t_inpcb; } ;
struct socket {int so_state; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; } ;


 int INP_INFO_LOCK_ASSERT (int *) ;
 int INP_SOCKREF ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int,char*) ;
 int SOCK_LOCK (struct socket*) ;
 int SS_PROTOREF ;
 int TCPSTAT_INC (int ) ;
 scalar_t__ TCPS_CLOSED ;
 scalar_t__ TCPS_LISTEN ;
 int V_tcbinfo ;
 int in_pcbdrop (struct inpcb*) ;
 int sofree (struct socket*) ;
 int soisdisconnected (struct socket*) ;
 int tcp_fastopen_decrement_counter (int *) ;
 int tcp_offload_listen_stop (struct tcpcb*) ;
 int tcp_state_change (struct tcpcb*,scalar_t__) ;
 int tcps_closed ;

struct tcpcb *
tcp_close(struct tcpcb *tp)
{
 struct inpcb *inp = tp->t_inpcb;
 struct socket *so;

 INP_INFO_LOCK_ASSERT(&V_tcbinfo);
 INP_WLOCK_ASSERT(inp);
 if (tp->t_tfo_pending) {
  tcp_fastopen_decrement_counter(tp->t_tfo_pending);
  tp->t_tfo_pending = ((void*)0);
 }
 in_pcbdrop(inp);
 TCPSTAT_INC(tcps_closed);
 if (tp->t_state != TCPS_CLOSED)
  tcp_state_change(tp, TCPS_CLOSED);
 KASSERT(inp->inp_socket != ((void*)0), ("tcp_close: inp_socket NULL"));
 so = inp->inp_socket;
 soisdisconnected(so);
 if (inp->inp_flags & INP_SOCKREF) {
  KASSERT(so->so_state & SS_PROTOREF,
      ("tcp_close: !SS_PROTOREF"));
  inp->inp_flags &= ~INP_SOCKREF;
  INP_WUNLOCK(inp);
  SOCK_LOCK(so);
  so->so_state &= ~SS_PROTOREF;
  sofree(so);
  return (((void*)0));
 }
 return (tp);
}
