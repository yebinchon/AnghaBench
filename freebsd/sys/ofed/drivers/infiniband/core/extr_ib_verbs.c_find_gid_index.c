
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct ib_gid_attr {scalar_t__ gid_type; int ndev; } ;
struct find_gid_index_context {scalar_t__ gid_type; int vlan_id; } ;


 int rdma_vlan_dev_vlan_id (int ) ;

__attribute__((used)) static bool find_gid_index(const union ib_gid *gid,
      const struct ib_gid_attr *gid_attr,
      void *context)
{
 u16 vlan_diff;
 struct find_gid_index_context *ctx =
  (struct find_gid_index_context *)context;

 if (ctx->gid_type != gid_attr->gid_type)
  return 0;
 vlan_diff = rdma_vlan_dev_vlan_id(gid_attr->ndev) ^ ctx->vlan_id;

 return (vlan_diff == 0x0000 || vlan_diff == 0xFFFF);
}
