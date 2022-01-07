
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {scalar_t__ port_type; } ;


 scalar_t__ FW_PORT_TYPE_BP40_BA ;
 scalar_t__ FW_PORT_TYPE_BP4_AP ;
 scalar_t__ FW_PORT_TYPE_BP_AP ;
 scalar_t__ FW_PORT_TYPE_BT_SGMII ;
 scalar_t__ FW_PORT_TYPE_BT_XAUI ;
 scalar_t__ FW_PORT_TYPE_BT_XFI ;
 scalar_t__ FW_PORT_TYPE_KR ;
 scalar_t__ FW_PORT_TYPE_KR4_100G ;
 scalar_t__ FW_PORT_TYPE_KR_SFP28 ;
 scalar_t__ FW_PORT_TYPE_KR_XLAUI ;
 scalar_t__ FW_PORT_TYPE_KX ;
 scalar_t__ FW_PORT_TYPE_KX4 ;

__attribute__((used)) static bool
fixed_ifmedia(struct port_info *pi)
{

 return (pi->port_type == FW_PORT_TYPE_BT_SGMII ||
     pi->port_type == FW_PORT_TYPE_BT_XFI ||
     pi->port_type == FW_PORT_TYPE_BT_XAUI ||
     pi->port_type == FW_PORT_TYPE_KX4 ||
     pi->port_type == FW_PORT_TYPE_KX ||
     pi->port_type == FW_PORT_TYPE_KR ||
     pi->port_type == FW_PORT_TYPE_BP_AP ||
     pi->port_type == FW_PORT_TYPE_BP4_AP ||
     pi->port_type == FW_PORT_TYPE_BP40_BA ||
     pi->port_type == FW_PORT_TYPE_KR4_100G ||
     pi->port_type == FW_PORT_TYPE_KR_SFP28 ||
     pi->port_type == FW_PORT_TYPE_KR_XLAUI);
}
