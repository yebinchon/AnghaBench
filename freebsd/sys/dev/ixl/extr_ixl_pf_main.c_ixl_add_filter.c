
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixl_vsi {int num_vlans; int num_macs; struct ixl_pf* back; } ;
struct ixl_pf {int dev; } ;
struct ixl_mac_filter {scalar_t__ vlan; int flags; } ;
typedef scalar_t__ s16 ;
typedef int device_t ;


 int DEBUGOUT (char*) ;
 int IXL_FILTER_USED ;
 int IXL_FILTER_VLAN ;
 scalar_t__ IXL_VLAN_ANY ;
 int device_printf (int ,char*) ;
 int ixl_add_hw_filters (struct ixl_vsi*,int ,int) ;
 int ixl_del_filter (struct ixl_vsi*,int const*,scalar_t__) ;
 struct ixl_mac_filter* ixl_find_filter (struct ixl_vsi*,int const*,scalar_t__) ;
 struct ixl_mac_filter* ixl_new_filter (struct ixl_vsi*,int const*,scalar_t__) ;

void
ixl_add_filter(struct ixl_vsi *vsi, const u8 *macaddr, s16 vlan)
{
 struct ixl_mac_filter *f, *tmp;
 struct ixl_pf *pf;
 device_t dev;

 DEBUGOUT("ixl_add_filter: begin");

 pf = vsi->back;
 dev = pf->dev;


 f = ixl_find_filter(vsi, macaddr, vlan);
 if (f != ((void*)0))
  return;





 if ((vlan != IXL_VLAN_ANY) && (vsi->num_vlans == 1)) {
  tmp = ixl_find_filter(vsi, macaddr, IXL_VLAN_ANY);
  if (tmp != ((void*)0)) {
   ixl_del_filter(vsi, macaddr, IXL_VLAN_ANY);
   ixl_add_filter(vsi, macaddr, 0);
  }
 }

 f = ixl_new_filter(vsi, macaddr, vlan);
 if (f == ((void*)0)) {
  device_printf(dev, "WARNING: no filter available!!\n");
  return;
 }
 if (f->vlan != IXL_VLAN_ANY)
  f->flags |= IXL_FILTER_VLAN;
 else
  vsi->num_macs++;

 f->flags |= IXL_FILTER_USED;
 ixl_add_hw_filters(vsi, f->flags, 1);
}
