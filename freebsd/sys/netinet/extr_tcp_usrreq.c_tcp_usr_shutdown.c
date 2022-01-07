
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {TYPE_1__* t_fb; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int ECONNRESET ;
 int INP_DROPPED ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int PRU_SHUTDOWN ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 int TCP_PROBE2 (int ,struct tcpcb*,int ) ;
 int debug__user ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int socantsendmore (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct tcpcb*) ;
 int tcp_usrclosed (struct tcpcb*) ;

__attribute__((used)) static int
tcp_usr_shutdown(struct socket *so)
{
 int error = 0;
 struct inpcb *inp;
 struct tcpcb *tp = ((void*)0);
 struct epoch_tracker et;

 TCPDEBUG0;
 NET_EPOCH_ENTER(et);
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("inp == NULL"));
 INP_WLOCK(inp);
 if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
  error = ECONNRESET;
  goto out;
 }
 tp = intotcpcb(inp);
 TCPDEBUG1();
 socantsendmore(so);
 tcp_usrclosed(tp);
 if (!(inp->inp_flags & INP_DROPPED))
  error = tp->t_fb->tfb_tcp_output(tp);

out:
 TCPDEBUG2(PRU_SHUTDOWN);
 TCP_PROBE2(debug__user, tp, PRU_SHUTDOWN);
 INP_WUNLOCK(inp);
 NET_EPOCH_EXIT(et);

 return (error);
}
