
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NG_HCI_LINK_ACL ;
 int NG_HCI_LINK_LE_PUBLIC ;
 int NG_HCI_LINK_LE_RANDOM ;

int ng_btsock_l2cap_addrtype_to_linktype(int addrtype)
{
 switch(addrtype){
 case 129:
  return NG_HCI_LINK_LE_PUBLIC;
 case 128:
  return NG_HCI_LINK_LE_RANDOM;
 default:
  return NG_HCI_LINK_ACL;
 }
}
