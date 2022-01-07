
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct elink_vars {int link_status; } ;
struct elink_phy {int dummy; } ;
struct elink_params {int dummy; } ;


 int ELINK_MDIO_AN_CL73_OR_37_COMPLETE ;
 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int LINK_STATUS_PARALLEL_DETECTION_USED ;
 scalar_t__ elink_direct_parallel_detect_used (struct elink_phy*,struct elink_params*) ;

__attribute__((used)) static void elink_xgxs_an_resolve(struct elink_phy *phy,
      struct elink_params *params,
      struct elink_vars *vars,
      uint32_t gp_status)
{
 if (gp_status & ELINK_MDIO_AN_CL73_OR_37_COMPLETE)
  vars->link_status |=
   LINK_STATUS_AUTO_NEGOTIATE_COMPLETE;

 if (elink_direct_parallel_detect_used(phy, params))
  vars->link_status |=
   LINK_STATUS_PARALLEL_DETECTION_USED;
}
