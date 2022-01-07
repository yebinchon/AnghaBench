
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifbpstpreq {int ifbp_design_port; int ifbp_design_bridge; int ifbp_design_root; int ifbp_design_cost; int ifbp_fwd_trans; } ;
struct bridge_port {int design_port; int design_bridge; int design_root; int design_cost; int fwd_trans; int enable; } ;


 int bcopy (int *,int *,int) ;
 int dot1dStpPortEnable_enabled ;
 int snmp_uint64_to_bridgeid (int ,int ) ;

__attribute__((used)) static void
bridge_port_getinfo_opstp(struct ifbpstpreq *bp_stp, struct bridge_port *bp)
{
 bp->enable = dot1dStpPortEnable_enabled;
 bp->fwd_trans = bp_stp->ifbp_fwd_trans;
 bp->design_cost = bp_stp->ifbp_design_cost;
 snmp_uint64_to_bridgeid(bp_stp->ifbp_design_root, bp->design_root);
 snmp_uint64_to_bridgeid(bp_stp->ifbp_design_bridge, bp->design_bridge);
 bcopy(&(bp_stp->ifbp_design_port), &(bp->design_port),
     sizeof(uint16_t));
}
