
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_state; int t_rxtshift; int t_softerror; } ;
struct rtentry {int dummy; } ;
struct TYPE_5__ {struct rtentry* ro_rt; } ;
struct inpcb {int inp_flags; TYPE_1__ inp_route; } ;
struct TYPE_6__ {int so_timeo; } ;


 int EHOSTDOWN ;
 int EHOSTUNREACH ;
 int ENETUNREACH ;
 int INP_DROPPED ;
 int INP_INFO_LOCK_ASSERT (int *) ;
 int INP_TIMEWAIT ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int RTFREE (struct rtentry*) ;
 scalar_t__ TCPS_ESTABLISHED ;
 int V_tcbinfo ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 TYPE_2__* so ;
 int sorwakeup (TYPE_2__*) ;
 int sowwakeup (TYPE_2__*) ;
 struct tcpcb* tcp_drop (struct tcpcb*,int) ;
 int wakeup (int *) ;

__attribute__((used)) static struct inpcb *
tcp_notify(struct inpcb *inp, int error)
{
 struct tcpcb *tp;

 INP_INFO_LOCK_ASSERT(&V_tcbinfo);
 INP_WLOCK_ASSERT(inp);

 if ((inp->inp_flags & INP_TIMEWAIT) ||
     (inp->inp_flags & INP_DROPPED))
  return (inp);

 tp = intotcpcb(inp);
 KASSERT(tp != ((void*)0), ("tcp_notify: tp == NULL"));
 if (tp->t_state == TCPS_ESTABLISHED &&
     (error == EHOSTUNREACH || error == ENETUNREACH ||
      error == EHOSTDOWN)) {
  if (inp->inp_route.ro_rt) {
   RTFREE(inp->inp_route.ro_rt);
   inp->inp_route.ro_rt = (struct rtentry *)((void*)0);
  }
  return (inp);
 } else if (tp->t_state < TCPS_ESTABLISHED && tp->t_rxtshift > 3 &&
     tp->t_softerror) {
  tp = tcp_drop(tp, error);
  if (tp != ((void*)0))
   return (inp);
  else
   return (((void*)0));
 } else {
  tp->t_softerror = error;
  return (inp);
 }





}
