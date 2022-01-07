
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {scalar_t__ rcv_nxt; scalar_t__ rcv_adv; int rcv_wnd; } ;
struct socket {int so_rcv; } ;
typedef scalar_t__ int32_t ;


 int imax (scalar_t__,int) ;
 scalar_t__ sbspace (int *) ;

void
ctf_calc_rwin(struct socket *so, struct tcpcb *tp)
{
 int32_t win;






 win = sbspace(&so->so_rcv);
 if (win < 0)
  win = 0;
 tp->rcv_wnd = imax(win, (int)(tp->rcv_adv - tp->rcv_nxt));
}
