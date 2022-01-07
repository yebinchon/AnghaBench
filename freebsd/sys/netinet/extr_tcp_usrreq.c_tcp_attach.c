
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {int t_state; } ;
struct TYPE_4__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct TYPE_3__ {scalar_t__ sb_hiwat; int sb_flags; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct inpcb {int inp_vflag; int inp_flags; int in6p_hops; } ;
struct epoch_tracker {int dummy; } ;


 int ENOBUFS ;
 int IN6P_IPV6_V6ONLY ;
 int INP_IPV4 ;
 int INP_IPV6 ;
 int INP_IPV6PROTO ;
 int INP_WUNLOCK (struct inpcb*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int SB_AUTOSIZE ;
 int TCPSTATES_INC (int ) ;
 int TCPS_CLOSED ;
 int V_tcbinfo ;
 int V_tcp_recvspace ;
 int V_tcp_sendspace ;
 int in_pcballoc (struct socket*,int *) ;
 int in_pcbdetach (struct inpcb*) ;
 int in_pcbfree (struct inpcb*) ;
 int soreserve (struct socket*,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct tcpcb* tcp_newtcpcb (struct inpcb*) ;

__attribute__((used)) static int
tcp_attach(struct socket *so)
{
 struct tcpcb *tp;
 struct inpcb *inp;
 struct epoch_tracker et;
 int error;

 if (so->so_snd.sb_hiwat == 0 || so->so_rcv.sb_hiwat == 0) {
  error = soreserve(so, V_tcp_sendspace, V_tcp_recvspace);
  if (error)
   return (error);
 }
 so->so_rcv.sb_flags |= SB_AUTOSIZE;
 so->so_snd.sb_flags |= SB_AUTOSIZE;
 NET_EPOCH_ENTER(et);
 error = in_pcballoc(so, &V_tcbinfo);
 if (error) {
  NET_EPOCH_EXIT(et);
  return (error);
 }
 inp = sotoinpcb(so);
 inp->inp_vflag |= INP_IPV4;
 tp = tcp_newtcpcb(inp);
 if (tp == ((void*)0)) {
  in_pcbdetach(inp);
  in_pcbfree(inp);
  NET_EPOCH_EXIT(et);
  return (ENOBUFS);
 }
 tp->t_state = TCPS_CLOSED;
 INP_WUNLOCK(inp);
 NET_EPOCH_EXIT(et);
 TCPSTATES_INC(TCPS_CLOSED);
 return (0);
}
