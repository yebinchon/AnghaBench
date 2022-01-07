
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct tcp_bbr {int rc_all_timers_stopped; } ;



__attribute__((used)) static void
bbr_timer_stop(struct tcpcb *tp, uint32_t timer_type)
{
 struct tcp_bbr *bbr;

 bbr = (struct tcp_bbr *)tp->t_fb_ptr;
 bbr->rc_all_timers_stopped = 1;
 return;
}
