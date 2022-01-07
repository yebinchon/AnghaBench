
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int asconf_supported; int peer_supports_nat; int prsctp_supported; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;


 int SCTPDBG (int ,char*,...) ;

 int SCTP_DEBUG_INPUT2 ;
__attribute__((used)) static void
sctp_process_unrecog_param(struct sctp_tcb *stcb, uint16_t parameter_type)
{
 switch (parameter_type) {

 case 131:
  stcb->asoc.prsctp_supported = 0;
  break;
 case 128:
  break;

 case 132:
  stcb->asoc.peer_supports_nat = 0;
  break;
 case 135:
 case 134:
 case 130:
  stcb->asoc.asconf_supported = 0;
  break;
 case 129:
 case 133:
  SCTPDBG(SCTP_DEBUG_INPUT2, "Huh, the peer does not support success? or error cause?\n");
  SCTPDBG(SCTP_DEBUG_INPUT2,
      "Turning off ASCONF to this strange peer\n");
  stcb->asoc.asconf_supported = 0;
  break;
 default:
  SCTPDBG(SCTP_DEBUG_INPUT2,
      "Peer does not support param type %d (0x%x)??\n",
      parameter_type, parameter_type);
  break;
 }
}
