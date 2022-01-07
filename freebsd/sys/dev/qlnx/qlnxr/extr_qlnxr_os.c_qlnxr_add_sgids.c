
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct TYPE_2__ {int primary_mac; int ifp; } ;
typedef TYPE_1__ qlnx_host_t ;


 int is_vlan_dev (int ) ;
 int qlnxr_add_ip_based_gid (struct qlnxr_dev*,int ) ;
 int qlnxr_add_sgid (struct qlnxr_dev*,union ib_gid*) ;
 int qlnxr_build_sgid_mac (union ib_gid*,int ,int,int ) ;
 int vlan_dev_vlan_id (int ) ;

__attribute__((used)) static void
qlnxr_add_sgids(struct qlnxr_dev *dev)
{
 qlnx_host_t *ha = dev->ha;
 u16 vlan_id;
 bool is_vlan;
 union ib_gid vgid;

 qlnxr_add_ip_based_gid(dev, ha->ifp);

 is_vlan = is_vlan_dev(ha->ifp);
        vlan_id = (is_vlan) ? vlan_dev_vlan_id(ha->ifp) : 0;
 qlnxr_build_sgid_mac(&vgid, ha->primary_mac, is_vlan, vlan_id);
 qlnxr_add_sgid(dev, &vgid);
}
