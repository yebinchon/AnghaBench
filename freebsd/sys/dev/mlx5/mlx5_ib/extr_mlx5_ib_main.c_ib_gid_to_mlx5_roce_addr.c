
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ib_gid {union ib_gid const* raw; } ;
typedef int u16 ;
struct ib_gid_attr {int gid_type; int ndev; } ;




 int IF_LLADDR (int ) ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_ROCE_L3_TYPE_IPV4 ;
 int MLX5_ROCE_L3_TYPE_IPV6 ;
 int MLX5_ROCE_VERSION_1 ;
 int MLX5_ROCE_VERSION_2 ;
 int MLX5_SET_RA (void*,int,int) ;
 int WARN_ON (int) ;
 int ether_addr_copy (void*,int ) ;
 scalar_t__ ipv6_addr_v4mapped (void*) ;
 int memcpy (char*,union ib_gid const*,int) ;
 int rdma_vlan_dev_vlan_id (int ) ;
 int roce_addr_layout ;
 int roce_l3_type ;
 int roce_version ;
 int source_l3_address ;
 int source_mac_47_32 ;
 int vlan_valid ;

__attribute__((used)) static void ib_gid_to_mlx5_roce_addr(const union ib_gid *gid,
         const struct ib_gid_attr *attr,
         void *mlx5_addr)
{

 char *mlx5_addr_l3_addr = MLX5_ADDR_OF(roce_addr_layout, mlx5_addr,
            source_l3_address);
 void *mlx5_addr_mac = MLX5_ADDR_OF(roce_addr_layout, mlx5_addr,
            source_mac_47_32);
 u16 vlan_id;

 if (!gid)
  return;
 ether_addr_copy(mlx5_addr_mac, IF_LLADDR(attr->ndev));

 vlan_id = rdma_vlan_dev_vlan_id(attr->ndev);
 if (vlan_id != 0xffff) {
  MLX5_SET(roce_addr_layout, mlx5_addr, vlan_valid, 1);
  MLX5_SET(roce_addr_layout, mlx5_addr, vlan_id, vlan_id);
 }

 switch (attr->gid_type) {
 case 129:
  MLX5_SET(roce_addr_layout, mlx5_addr, roce_version, MLX5_ROCE_VERSION_1);
  break;
 case 128:
  MLX5_SET(roce_addr_layout, mlx5_addr, roce_version, MLX5_ROCE_VERSION_2);
  break;

 default:
  WARN_ON(1);
 }

 if (attr->gid_type != 129) {
  if (ipv6_addr_v4mapped((void *)gid))
   MLX5_SET(roce_addr_layout, mlx5_addr, roce_l3_type, MLX5_ROCE_L3_TYPE_IPV4);

  else
   MLX5_SET(roce_addr_layout, mlx5_addr, roce_l3_type, MLX5_ROCE_L3_TYPE_IPV6);

 }

 if ((attr->gid_type == 129) ||
     !ipv6_addr_v4mapped((void *)gid))
  memcpy(mlx5_addr_l3_addr, gid, sizeof(*gid));
 else
  memcpy(&mlx5_addr_l3_addr[12], &gid->raw[12], 4);
}
