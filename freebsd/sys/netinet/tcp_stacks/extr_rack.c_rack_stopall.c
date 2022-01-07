
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ t_fb_ptr; } ;
struct tcp_rack {int t_timers_stopped; } ;



__attribute__((used)) static int
rack_stopall(struct tcpcb *tp)
{
 struct tcp_rack *rack;
 rack = (struct tcp_rack *)tp->t_fb_ptr;
 rack->t_timers_stopped = 1;
 return (0);
}
