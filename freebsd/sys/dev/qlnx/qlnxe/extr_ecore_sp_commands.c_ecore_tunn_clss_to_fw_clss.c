
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum tunnel_clss { ____Placeholder_tunnel_clss } tunnel_clss ;







 int TUNNEL_CLSS_INNER_MAC_VLAN ;
 int TUNNEL_CLSS_INNER_MAC_VNI ;
 int TUNNEL_CLSS_MAC_VLAN ;
 int TUNNEL_CLSS_MAC_VLAN_DUAL_STAGE ;
 int TUNNEL_CLSS_MAC_VNI ;

__attribute__((used)) static enum tunnel_clss ecore_tunn_clss_to_fw_clss(u8 type)
{
 switch (type) {
 case 130:
  return TUNNEL_CLSS_MAC_VLAN;
 case 128:
  return TUNNEL_CLSS_MAC_VNI;
 case 132:
  return TUNNEL_CLSS_INNER_MAC_VLAN;
 case 131:
  return TUNNEL_CLSS_INNER_MAC_VNI;
 case 129:
  return TUNNEL_CLSS_MAC_VLAN_DUAL_STAGE;
 default:
  return TUNNEL_CLSS_MAC_VLAN;
 }
}
