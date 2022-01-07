
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int primary_mac; int ifp; } ;




 int QL_DPRINT12 (TYPE_1__*,char*) ;
 int is_vlan_dev (int ) ;
 int qlnxr_add_sgid (struct qlnxr_dev*,union ib_gid*) ;
 int qlnxr_build_sgid_mac (union ib_gid*,int ,int,int) ;
 int qlnxr_del_sgid (struct qlnxr_dev*,union ib_gid*) ;
 int vlan_dev_vlan_id (int ) ;

__attribute__((used)) static int qlnxr_addr_event (struct qlnxr_dev *dev,
    unsigned long event,
    struct ifnet *ifp,
    union ib_gid *gid)
{
 bool is_vlan = 0;
 union ib_gid vgid;
 u16 vlan_id = 0xffff;

 QL_DPRINT12(dev->ha, "Link event occured\n");
 is_vlan = is_vlan_dev(dev->ha->ifp);
 vlan_id = (is_vlan) ? vlan_dev_vlan_id(dev->ha->ifp) : 0;

 switch (event) {
 case 128 :
  qlnxr_add_sgid(dev, gid);
  if (is_vlan) {
   qlnxr_build_sgid_mac(&vgid, dev->ha->primary_mac, is_vlan, vlan_id);
   qlnxr_add_sgid(dev, &vgid);
  }
  break;
 case 129 :
  qlnxr_del_sgid(dev, gid);
  if (is_vlan) {
   qlnxr_build_sgid_mac(&vgid, dev->ha->primary_mac, is_vlan, vlan_id);
   qlnxr_del_sgid(dev, &vgid);
  }
  break;
 default :
  break;
 }
 return 1;
}
