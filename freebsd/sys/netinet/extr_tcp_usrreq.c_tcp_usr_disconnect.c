
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct epoch_tracker {int dummy; } ;


 int ECONNRESET ;
 int INP_DROPPED ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int PRU_DISCONNECT ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 int TCP_PROBE2 (int ,struct tcpcb*,int ) ;
 int debug__user ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int tcp_disconnect (struct tcpcb*) ;

__attribute__((used)) static int
tcp_usr_disconnect(struct socket *so)
{
 struct inpcb *inp;
 struct tcpcb *tp = ((void*)0);
 struct epoch_tracker et;
 int error = 0;

 TCPDEBUG0;
 NET_EPOCH_ENTER(et);
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("tcp_usr_disconnect: inp == NULL"));
 INP_WLOCK(inp);
 if (inp->inp_flags & INP_TIMEWAIT)
  goto out;
 if (inp->inp_flags & INP_DROPPED) {
  error = ECONNRESET;
  goto out;
 }
 tp = intotcpcb(inp);
 TCPDEBUG1();
 tcp_disconnect(tp);
out:
 TCPDEBUG2(PRU_DISCONNECT);
 TCP_PROBE2(debug__user, tp, PRU_DISCONNECT);
 INP_WUNLOCK(inp);
 NET_EPOCH_EXIT(et);
 return (error);
}
