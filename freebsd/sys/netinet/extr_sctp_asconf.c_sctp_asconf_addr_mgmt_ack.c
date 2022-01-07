
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sctp_tcb {int sctp_ep; } ;
struct sctp_ifa {int ifn_p; } ;


 int SCTP_MOBILITY_BASE ;
 int SCTP_MOBILITY_FASTHANDOFF ;
 int sctp_asconf_nets_cleanup (struct sctp_tcb*,int ) ;
 int sctp_del_local_addr_restricted (struct sctp_tcb*,struct sctp_ifa*) ;
 scalar_t__ sctp_is_mobility_feature_on (int ,int ) ;
 int sctp_path_check_and_react (struct sctp_tcb*,struct sctp_ifa*) ;

__attribute__((used)) static void
sctp_asconf_addr_mgmt_ack(struct sctp_tcb *stcb, struct sctp_ifa *addr, uint32_t flag)
{
 if (flag) {

  sctp_del_local_addr_restricted(stcb, addr);

  if (sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_BASE) ||
      sctp_is_mobility_feature_on(stcb->sctp_ep,
      SCTP_MOBILITY_FASTHANDOFF)) {
   sctp_path_check_and_react(stcb, addr);
   return;
  }

  sctp_asconf_nets_cleanup(stcb, addr->ifn_p);
 }

}
