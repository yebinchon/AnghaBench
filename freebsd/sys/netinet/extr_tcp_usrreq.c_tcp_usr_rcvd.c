
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {int t_flags; scalar_t__ t_state; TYPE_1__* t_fb; } ;
struct socket {int dummy; } ;
struct inpcb {int inp_flags; } ;
struct TYPE_2__ {int (* tfb_tcp_output ) (struct tcpcb*) ;} ;


 int ECONNRESET ;
 int INP_DROPPED ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ IS_FASTOPEN (int) ;
 int KASSERT (int ,char*) ;
 int PRU_RCVD ;
 int TCPDEBUG0 ;
 int TCPDEBUG1 () ;
 int TCPDEBUG2 (int ) ;
 scalar_t__ TCPS_SYN_RECEIVED ;
 int TCP_PROBE2 (int ,struct tcpcb*,int ) ;
 int TF_TOE ;
 int debug__user ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int stub1 (struct tcpcb*) ;
 int tcp_offload_rcvd (struct tcpcb*) ;

__attribute__((used)) static int
tcp_usr_rcvd(struct socket *so, int flags)
{
 struct inpcb *inp;
 struct tcpcb *tp = ((void*)0);
 int error = 0;

 TCPDEBUG0;
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("tcp_usr_rcvd: inp == NULL"));
 INP_WLOCK(inp);
 if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
  error = ECONNRESET;
  goto out;
 }
 tp = intotcpcb(inp);
 TCPDEBUG1();







 if (IS_FASTOPEN(tp->t_flags) &&
     (tp->t_state == TCPS_SYN_RECEIVED))
  goto out;





 tp->t_fb->tfb_tcp_output(tp);

out:
 TCPDEBUG2(PRU_RCVD);
 TCP_PROBE2(debug__user, tp, PRU_RCVD);
 INP_WUNLOCK(inp);
 return (error);
}
