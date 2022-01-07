
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_logstate; int t_flags2; int t_logs; int t_inpcb; } ;
struct tcp_log_mem {int dummy; } ;


 int EINVAL ;
 int INP_WLOCK_ASSERT (int ) ;
 struct tcp_log_mem* STAILQ_FIRST (int *) ;







 int TF2_LOG_AUTO ;
 int tcp_log_remove_log_head (struct tcpcb*,struct tcp_log_mem*) ;

int
tcp_log_state_change(struct tcpcb *tp, int state)
{
 struct tcp_log_mem *log_entry;

 INP_WLOCK_ASSERT(tp->t_inpcb);
 switch(state) {
 case 134:
  while ((log_entry = STAILQ_FIRST(&tp->t_logs)) != ((void*)0))
   tcp_log_remove_log_head(tp, log_entry);


 case 130:
  tp->t_logstate = 130;
  break;

 case 129:
 case 132:
 case 133:
 case 131:
 case 128:
  tp->t_logstate = state;
  break;

 default:
  return (EINVAL);
 }

 tp->t_flags2 &= ~(TF2_LOG_AUTO);

 return (0);
}
