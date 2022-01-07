
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ auth_supported; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int dummy; } ;


 int SCTPDBG (int ,char*) ;
 int SCTP_DEBUG_INPUT2 ;
 int sctp_asconf_send_nat_state_update (struct sctp_tcb*,struct sctp_nets*) ;

__attribute__((used)) static int
sctp_handle_nat_missing_state(struct sctp_tcb *stcb,
    struct sctp_nets *net)
{




 if (stcb->asoc.auth_supported == 0) {
  SCTPDBG(SCTP_DEBUG_INPUT2, "sctp_handle_nat_missing_state: Peer does not support AUTH, cannot send an asconf\n");
  return (0);
 }
 sctp_asconf_send_nat_state_update(stcb, net);
 return (1);
}
