
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ecore_iov_vport_update_flag { ____Placeholder_ecore_iov_vport_update_flag } ecore_iov_vport_update_flag ;


 int CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN ;
 int CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM ;
 int CHANNEL_TLV_VPORT_UPDATE_ACTIVATE ;
 int CHANNEL_TLV_VPORT_UPDATE_MCAST ;
 int CHANNEL_TLV_VPORT_UPDATE_RSS ;
 int CHANNEL_TLV_VPORT_UPDATE_SGE_TPA ;
 int CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH ;
 int CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP ;
__attribute__((used)) static u16 ecore_iov_vport_to_tlv(enum ecore_iov_vport_update_flag flag)
{
 switch (flag) {
 case 133:
  return CHANNEL_TLV_VPORT_UPDATE_ACTIVATE;
 case 128:
  return CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP;
 case 129:
  return CHANNEL_TLV_VPORT_UPDATE_TX_SWITCH;
 case 132:
  return CHANNEL_TLV_VPORT_UPDATE_MCAST;
 case 134:
  return CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM;
 case 131:
  return CHANNEL_TLV_VPORT_UPDATE_RSS;
 case 135:
  return CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN;
 case 130:
  return CHANNEL_TLV_VPORT_UPDATE_SGE_TPA;
 default:
  return 0;
 }
}
