
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_lognum; int t_logs; int t_lib; TYPE_2__* t_inpcb; } ;
struct tcp_log_id_node {int tln_bucket; scalar_t__ tln_count; int tln_entries; int tln_af; int tln_ie; } ;
struct TYPE_3__ {int inc_flags; int inc_ie; } ;
struct TYPE_4__ {TYPE_1__ inp_inc; } ;


 int AF_INET ;
 int AF_INET6 ;
 int INC_ISIPV6 ;
 int INP_WLOCK_ASSERT (TYPE_2__*) ;
 int STAILQ_INIT (int *) ;

__attribute__((used)) static void
tcp_log_move_tp_to_node(struct tcpcb *tp, struct tcp_log_id_node *tln)
{

 INP_WLOCK_ASSERT(tp->t_inpcb);

 tln->tln_ie = tp->t_inpcb->inp_inc.inc_ie;
 if (tp->t_inpcb->inp_inc.inc_flags & INC_ISIPV6)
  tln->tln_af = AF_INET6;
 else
  tln->tln_af = AF_INET;
 tln->tln_entries = tp->t_logs;
 tln->tln_count = tp->t_lognum;
 tln->tln_bucket = tp->t_lib;


 STAILQ_INIT(&tp->t_logs);
 tp->t_lognum = 0;
}
