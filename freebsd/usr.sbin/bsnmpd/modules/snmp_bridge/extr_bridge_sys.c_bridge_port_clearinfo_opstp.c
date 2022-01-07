
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {scalar_t__ enable; scalar_t__ fwd_trans; int design_port; int design_bridge; int design_root; scalar_t__ design_cost; } ;
typedef int port_id ;
typedef int bridge_id ;


 int bzero (int *,int) ;
 scalar_t__ dot1dStpPortEnable_disabled ;
 scalar_t__ dot1dStpPortEnable_enabled ;

__attribute__((used)) static void
bridge_port_clearinfo_opstp(struct bridge_port *bp)
{
 if (bp->enable == dot1dStpPortEnable_enabled) {
  bp->design_cost = 0;
  bzero(&(bp->design_root), sizeof(bridge_id));
  bzero(&(bp->design_bridge), sizeof(bridge_id));
  bzero(&(bp->design_port), sizeof(port_id));
  bp->fwd_trans = 0;
 }

 bp->enable = dot1dStpPortEnable_disabled;
}
