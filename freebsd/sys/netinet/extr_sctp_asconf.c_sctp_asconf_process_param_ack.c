
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_8__ {int asconf_queue; } ;
struct sctp_tcb {TYPE_4__ asoc; } ;
struct TYPE_5__ {int param_type; } ;
struct TYPE_6__ {TYPE_1__ ph; } ;
struct TYPE_7__ {TYPE_2__ aph; } ;
struct sctp_asconf_addr {scalar_t__ ifa; TYPE_3__ ap; } ;


 int SCTPDBG (int ,char*) ;

 int SCTP_DEBUG_ASCONF1 ;

 int SCTP_FREE (struct sctp_asconf_addr*,int ) ;
 int SCTP_M_ASC_ADDR ;

 int TAILQ_REMOVE (int *,struct sctp_asconf_addr*,int ) ;
 int next ;
 int sctp_asconf_addr_mgmt_ack (struct sctp_tcb*,scalar_t__,int ) ;
 int sctp_free_ifa (scalar_t__) ;

__attribute__((used)) static void
sctp_asconf_process_param_ack(struct sctp_tcb *stcb,
    struct sctp_asconf_addr *aparam, uint32_t flag)
{
 uint16_t param_type;


 param_type = aparam->ap.aph.ph.param_type;
 switch (param_type) {
 case 130:
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_param_ack: added IP address\n");
  sctp_asconf_addr_mgmt_ack(stcb, aparam->ifa, flag);
  break;
 case 129:
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_param_ack: deleted IP address\n");

  break;
 case 128:
  SCTPDBG(SCTP_DEBUG_ASCONF1,
      "process_param_ack: set primary IP address\n");

  break;
 default:

  break;
 }


 TAILQ_REMOVE(&stcb->asoc.asconf_queue, aparam, next);
 if (aparam->ifa)
  sctp_free_ifa(aparam->ifa);
 SCTP_FREE(aparam, SCTP_M_ASC_ADDR);
}
