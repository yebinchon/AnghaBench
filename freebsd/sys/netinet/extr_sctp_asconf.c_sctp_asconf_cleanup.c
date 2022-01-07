
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asconf_seq_out; int asconf_seq_out_acked; } ;
struct sctp_tcb {TYPE_1__ asoc; int sctp_ep; } ;
struct sctp_nets {int dummy; } ;


 scalar_t__ SCTP_FROM_SCTP_ASCONF ;
 scalar_t__ SCTP_LOC_2 ;
 int SCTP_TIMER_TYPE_ASCONF ;
 int sctp_timer_stop (int ,int ,struct sctp_tcb*,struct sctp_nets*,scalar_t__) ;
 int sctp_toss_old_asconf (struct sctp_tcb*) ;

void
sctp_asconf_cleanup(struct sctp_tcb *stcb, struct sctp_nets *net)
{



 sctp_timer_stop(SCTP_TIMER_TYPE_ASCONF, stcb->sctp_ep, stcb, net,
     SCTP_FROM_SCTP_ASCONF + SCTP_LOC_2);
 stcb->asoc.asconf_seq_out_acked = stcb->asoc.asconf_seq_out;

 sctp_toss_old_asconf(stcb);
}
