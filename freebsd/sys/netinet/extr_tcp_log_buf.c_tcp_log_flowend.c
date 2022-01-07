
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_logstate; TYPE_1__* t_inpcb; } ;
struct socket {int so_snd; int so_rcv; } ;
struct TYPE_2__ {struct socket* inp_socket; } ;


 int TCP_LOG_EVENT (struct tcpcb*,int *,int *,int *,int ,int ,int ,int *,int) ;
 int TCP_LOG_FLOWEND ;
 scalar_t__ TCP_LOG_STATE_OFF ;

void
tcp_log_flowend(struct tcpcb *tp)
{
 if (tp->t_logstate != TCP_LOG_STATE_OFF) {
  struct socket *so = tp->t_inpcb->inp_socket;
  TCP_LOG_EVENT(tp, ((void*)0), &so->so_rcv, &so->so_snd,
    TCP_LOG_FLOWEND, 0, 0, ((void*)0), 0);
 }
}
