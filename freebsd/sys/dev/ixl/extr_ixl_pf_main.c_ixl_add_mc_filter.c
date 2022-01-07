
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixl_vsi {int dummy; } ;
struct ixl_mac_filter {int flags; } ;


 int IXL_FILTER_MC ;
 int IXL_VLAN_ANY ;
 struct ixl_mac_filter* ixl_find_filter (struct ixl_vsi*,int *,int ) ;
 struct ixl_mac_filter* ixl_new_filter (struct ixl_vsi*,int *,int ) ;
 int printf (char*) ;

void
ixl_add_mc_filter(struct ixl_vsi *vsi, u8 *macaddr)
{
 struct ixl_mac_filter *f;


 f = ixl_find_filter(vsi, macaddr, IXL_VLAN_ANY);
 if (f != ((void*)0))
  return;

 f = ixl_new_filter(vsi, macaddr, IXL_VLAN_ANY);
 if (f != ((void*)0))
  f->flags |= IXL_FILTER_MC;
 else
  printf("WARNING: no filter available!!\n");
}
