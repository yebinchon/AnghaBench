
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int prsctp_supported; } ;
struct sctp_tcb {TYPE_1__ asoc; } ;
struct sctp_nets {int dummy; } ;


 int SCTPDBG (int ,char*,int,int) ;


 int SCTP_DEBUG_INPUT2 ;


 int sctp_asconf_cleanup (struct sctp_tcb*,struct sctp_nets*) ;

__attribute__((used)) static void
sctp_process_unrecog_chunk(struct sctp_tcb *stcb, uint8_t chunk_type,
    struct sctp_nets *net)
{
 switch (chunk_type) {
 case 130:
 case 131:
  sctp_asconf_cleanup(stcb, net);
  break;
 case 128:
 case 129:
  stcb->asoc.prsctp_supported = 0;
  break;
 default:
  SCTPDBG(SCTP_DEBUG_INPUT2,
      "Peer does not support chunk type %d (0x%x).\n",
      chunk_type, chunk_type);
  break;
 }
}
