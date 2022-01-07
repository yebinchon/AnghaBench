
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_send_times; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int dummy; } ;
struct sctp_inpcb {int dummy; } ;


 int SCTP_TIMER_TYPE_SHUTDOWN ;
 int sctp_backoff_on_timeout (struct sctp_tcb*,struct sctp_nets*,int,int ,int ) ;
 struct sctp_nets* sctp_find_alternate_net (struct sctp_tcb*,struct sctp_nets*,int ) ;
 int sctp_send_shutdown (struct sctp_tcb*,struct sctp_nets*) ;
 scalar_t__ sctp_threshold_management (struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*,int ) ;
 int sctp_timer_start (int ,struct sctp_inpcb*,struct sctp_tcb*,struct sctp_nets*) ;

int
sctp_shutdown_timer(struct sctp_inpcb *inp, struct sctp_tcb *stcb,
    struct sctp_nets *net)
{
 struct sctp_nets *alt;


 if (sctp_threshold_management(inp, stcb, net, stcb->asoc.max_send_times)) {

  return (1);
 }
 sctp_backoff_on_timeout(stcb, net, 1, 0, 0);

 alt = sctp_find_alternate_net(stcb, net, 0);


 sctp_send_shutdown(stcb, alt);


 sctp_timer_start(SCTP_TIMER_TYPE_SHUTDOWN, inp, stcb, alt);
 return (0);
}
