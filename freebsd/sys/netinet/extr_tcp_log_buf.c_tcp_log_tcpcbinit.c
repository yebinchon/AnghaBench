
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_flags2; int t_logstate; int t_logs; } ;


 int STAILQ_INIT (int *) ;
 int TF2_LOG_AUTO ;
 int tcp_log_auto_mode ;
 scalar_t__ tcp_log_selectauto () ;

void
tcp_log_tcpcbinit(struct tcpcb *tp)
{


 STAILQ_INIT(&tp->t_logs);





 if (tcp_log_selectauto()) {
  tp->t_logstate = tcp_log_auto_mode;
  tp->t_flags2 |= TF2_LOG_AUTO;
 }
}
