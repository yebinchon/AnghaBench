
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcptw {struct inpcb* tw_inpcb; } ;
struct socket {int so_state; } ;
struct inpcb {int inp_flags; struct socket* inp_socket; int * inp_ppcb; } ;


 int INP_SOCKREF ;
 int INP_TIMEWAIT ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int,char*) ;
 int NET_EPOCH_ASSERT () ;
 int SOCK_LOCK (struct socket*) ;
 int SS_PROTOREF ;
 int TCPSTAT_INC (int ) ;
 int in_pcbdrop (struct inpcb*) ;
 int in_pcbfree (struct inpcb*) ;
 struct tcptw* intotw (struct inpcb*) ;
 int sofree (struct socket*) ;
 int tcp_tw_2msl_stop (struct tcptw*,int) ;
 int tcps_closed ;

void
tcp_twclose(struct tcptw *tw, int reuse)
{
 struct socket *so;
 struct inpcb *inp;
 inp = tw->tw_inpcb;
 KASSERT((inp->inp_flags & INP_TIMEWAIT), ("tcp_twclose: !timewait"));
 KASSERT(intotw(inp) == tw, ("tcp_twclose: inp_ppcb != tw"));
 NET_EPOCH_ASSERT();
 INP_WLOCK_ASSERT(inp);

 tcp_tw_2msl_stop(tw, reuse);
 inp->inp_ppcb = ((void*)0);
 in_pcbdrop(inp);

 so = inp->inp_socket;
 if (so != ((void*)0)) {






  if (inp->inp_flags & INP_SOCKREF) {
   inp->inp_flags &= ~INP_SOCKREF;
   INP_WUNLOCK(inp);
   SOCK_LOCK(so);
   KASSERT(so->so_state & SS_PROTOREF,
       ("tcp_twclose: INP_SOCKREF && !SS_PROTOREF"));
   so->so_state &= ~SS_PROTOREF;
   sofree(so);
  } else {





   INP_WUNLOCK(inp);
  }
 } else {




  in_pcbfree(inp);
 }
 TCPSTAT_INC(tcps_closed);
}
