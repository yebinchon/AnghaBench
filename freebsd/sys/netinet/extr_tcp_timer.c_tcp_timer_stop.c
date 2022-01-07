
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {TYPE_2__* t_timers; TYPE_1__* t_fb; } ;
struct callout {int dummy; } ;
struct TYPE_4__ {int tt_draincnt; struct callout tt_2msl; struct callout tt_keep; struct callout tt_persist; struct callout tt_rexmt; struct callout tt_delack; int tt_flags; } ;
struct TYPE_3__ {int (* tfb_tcp_timer_stop ) (struct tcpcb*,int) ;} ;







 int TT_STOPPED ;
 scalar_t__ callout_async_drain (struct callout*,int ) ;
 int panic (char*,struct tcpcb*,int) ;
 int stub1 (struct tcpcb*,int) ;
 int tcp_timer_discard ;

void
tcp_timer_stop(struct tcpcb *tp, uint32_t timer_type)
{
 struct callout *t_callout;

 tp->t_timers->tt_flags |= TT_STOPPED;
 switch (timer_type) {
  case 131:
   t_callout = &tp->t_timers->tt_delack;
   break;
  case 128:
   t_callout = &tp->t_timers->tt_rexmt;
   break;
  case 129:
   t_callout = &tp->t_timers->tt_persist;
   break;
  case 130:
   t_callout = &tp->t_timers->tt_keep;
   break;
  case 132:
   t_callout = &tp->t_timers->tt_2msl;
   break;
  default:
   if (tp->t_fb->tfb_tcp_timer_stop) {




    tp->t_fb->tfb_tcp_timer_stop(tp, timer_type);
    return;
   }
   panic("tp %p bad timer_type %#x", tp, timer_type);
  }

 if (callout_async_drain(t_callout, tcp_timer_discard) == 0) {





  tp->t_timers->tt_draincnt++;
 }
}
