
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tcpcb {TYPE_1__* t_timers; } ;
struct callout {int dummy; } ;
struct TYPE_2__ {int tt_flags; struct callout tt_2msl; struct callout tt_keep; struct callout tt_persist; struct callout tt_rexmt; struct callout tt_delack; } ;



 int TT_2MSL_SUS ;

 int TT_DELACK_SUS ;

 int TT_KEEP_SUS ;

 int TT_PERSIST_SUS ;

 int TT_REXMT_SUS ;
 int callout_stop (struct callout*) ;
 int panic (char*,struct tcpcb*,int) ;

int
tcp_timer_suspend(struct tcpcb *tp, uint32_t timer_type)
{
 struct callout *t_callout;
 uint32_t t_flags;

 switch (timer_type) {
  case 131:
   t_flags = TT_DELACK_SUS;
   t_callout = &tp->t_timers->tt_delack;
   break;
  case 128:
   t_flags = TT_REXMT_SUS;
   t_callout = &tp->t_timers->tt_rexmt;
   break;
  case 129:
   t_flags = TT_PERSIST_SUS;
   t_callout = &tp->t_timers->tt_persist;
   break;
  case 130:
   t_flags = TT_KEEP_SUS;
   t_callout = &tp->t_timers->tt_keep;
   break;
  case 132:
   t_flags = TT_2MSL_SUS;
   t_callout = &tp->t_timers->tt_2msl;
   break;
  default:
   panic("tp:%p bad timer_type 0x%x", tp, timer_type);
 }
 tp->t_timers->tt_flags |= t_flags;
 return (callout_stop(t_callout));
}
