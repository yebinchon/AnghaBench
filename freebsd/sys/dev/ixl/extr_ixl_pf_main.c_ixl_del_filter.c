
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixl_vsi {scalar_t__ num_vlans; int num_macs; } ;
struct ixl_mac_filter {int flags; scalar_t__ vlan; } ;
typedef scalar_t__ s16 ;


 int IXL_FILTER_DEL ;
 int IXL_FILTER_VLAN ;
 scalar_t__ IXL_VLAN_ANY ;
 int ixl_add_filter (struct ixl_vsi*,int const*,scalar_t__) ;
 int ixl_del_hw_filters (struct ixl_vsi*,int) ;
 struct ixl_mac_filter* ixl_find_filter (struct ixl_vsi*,int const*,scalar_t__) ;

void
ixl_del_filter(struct ixl_vsi *vsi, const u8 *macaddr, s16 vlan)
{
 struct ixl_mac_filter *f;

 f = ixl_find_filter(vsi, macaddr, vlan);
 if (f == ((void*)0))
  return;

 f->flags |= IXL_FILTER_DEL;
 ixl_del_hw_filters(vsi, 1);
 if (f->vlan == IXL_VLAN_ANY && (f->flags & IXL_FILTER_VLAN) != 0)
  vsi->num_macs--;


 if (vlan != IXL_VLAN_ANY && vsi->num_vlans == 0) {

  ixl_del_filter(vsi, macaddr, 0);
  ixl_add_filter(vsi, macaddr, IXL_VLAN_ANY);
 }
 return;
}
