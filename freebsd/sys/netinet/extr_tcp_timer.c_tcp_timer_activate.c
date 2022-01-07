
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef int timeout_t ;
struct tcpcb {int t_flags; TYPE_2__* t_fb; TYPE_1__* t_timers; struct inpcb* t_inpcb; } ;
struct inpcb {int dummy; } ;
struct callout {int dummy; } ;
struct TYPE_4__ {int (* tfb_tcp_timer_activate ) (struct tcpcb*,int,int ) ;} ;
struct TYPE_3__ {int tt_flags; struct callout tt_2msl; struct callout tt_keep; struct callout tt_persist; struct callout tt_rexmt; struct callout tt_delack; } ;


 int TF_TOE ;





 int TT_STOPPED ;
 int callout_reset_on (struct callout*,int ,int *,struct tcpcb*,int) ;
 int callout_stop (struct callout*) ;
 int inp_to_cpuid (struct inpcb*) ;
 int panic (char*,struct tcpcb*,int) ;
 int stub1 (struct tcpcb*,int,int ) ;
 int * tcp_timer_2msl ;
 int * tcp_timer_delack ;
 int * tcp_timer_keep ;
 int * tcp_timer_persist ;
 int * tcp_timer_rexmt ;

void
tcp_timer_activate(struct tcpcb *tp, uint32_t timer_type, u_int delta)
{
 struct callout *t_callout;
 timeout_t *f_callout;
 struct inpcb *inp = tp->t_inpcb;
 int cpu = inp_to_cpuid(inp);






 if (tp->t_timers->tt_flags & TT_STOPPED)
  return;

 switch (timer_type) {
  case 131:
   t_callout = &tp->t_timers->tt_delack;
   f_callout = tcp_timer_delack;
   break;
  case 128:
   t_callout = &tp->t_timers->tt_rexmt;
   f_callout = tcp_timer_rexmt;
   break;
  case 129:
   t_callout = &tp->t_timers->tt_persist;
   f_callout = tcp_timer_persist;
   break;
  case 130:
   t_callout = &tp->t_timers->tt_keep;
   f_callout = tcp_timer_keep;
   break;
  case 132:
   t_callout = &tp->t_timers->tt_2msl;
   f_callout = tcp_timer_2msl;
   break;
  default:
   if (tp->t_fb->tfb_tcp_timer_activate) {
    tp->t_fb->tfb_tcp_timer_activate(tp, timer_type, delta);
    return;
   }
   panic("tp %p bad timer_type %#x", tp, timer_type);
  }
 if (delta == 0) {
  callout_stop(t_callout);
 } else {
  callout_reset_on(t_callout, delta, f_callout, tp, cpu);
 }
}
