
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct socket {int so_state; } ;
struct inpcb {int inp_flags; int * inp_socket; } ;
struct epoch_tracker {int dummy; } ;


 int ECONNABORTED ;
 int INP_DROPPED ;
 int INP_SOCKREF ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int PRU_ABORT ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 int SS_PROTOREF ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 int TCP_PROBE2 (int ,struct tcpcb*,int ) ;
 int debug__user ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 struct tcpcb* tcp_drop (struct tcpcb*,int ) ;

__attribute__((used)) static void
tcp_usr_abort(struct socket *so)
{
 struct inpcb *inp;
 struct tcpcb *tp = ((void*)0);
 struct epoch_tracker et;
 TCPDEBUG0;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("tcp_usr_abort: inp == NULL"));

 NET_EPOCH_ENTER(et);
 INP_WLOCK(inp);
 KASSERT(inp->inp_socket != ((void*)0),
     ("tcp_usr_abort: inp_socket == NULL"));




 if (!(inp->inp_flags & INP_TIMEWAIT) &&
     !(inp->inp_flags & INP_DROPPED)) {
  tp = intotcpcb(inp);
  TCPDEBUG1();
  tp = tcp_drop(tp, ECONNABORTED);
  if (tp == ((void*)0))
   goto dropped;
  TCPDEBUG2(PRU_ABORT);
  TCP_PROBE2(debug__user, tp, PRU_ABORT);
 }
 if (!(inp->inp_flags & INP_DROPPED)) {
  SOCK_LOCK(so);
  so->so_state |= SS_PROTOREF;
  SOCK_UNLOCK(so);
  inp->inp_flags |= INP_SOCKREF;
 }
 INP_WUNLOCK(inp);
dropped:
 NET_EPOCH_EXIT(et);
}
