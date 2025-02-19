
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct tcp_rack {int rc_in_persist; } ;


 int TT_DELACK ;
 int TT_KEEP ;
 int TT_PERSIST ;
 int TT_REXMT ;
 scalar_t__ tcp_timer_active (struct tcpcb*,int ) ;
 int tcp_timer_suspend (struct tcpcb*,int ) ;

__attribute__((used)) static void
rack_stop_all_timers(struct tcpcb *tp)
{
 struct tcp_rack *rack;




 if (tcp_timer_active(tp, TT_PERSIST)) {

  rack = (struct tcp_rack *)tp->t_fb_ptr;
  rack->rc_in_persist = 1;
 }
 tcp_timer_suspend(tp, TT_PERSIST);
 tcp_timer_suspend(tp, TT_REXMT);
 tcp_timer_suspend(tp, TT_KEEP);
 tcp_timer_suspend(tp, TT_DELACK);
}
