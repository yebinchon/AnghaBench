
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_port_immutable {int max_mad_size; int core_cap_flags; int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_port_attr {int gid_tbl_len; int pkey_tbl_len; } ;
struct ib_device {int dummy; } ;


 int IB_MGMT_MAD_SIZE ;
 int get_core_cap_flags (struct ib_device*) ;
 int mlx5_ib_query_port (struct ib_device*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int mlx5_port_immutable(struct ib_device *ibdev, u8 port_num,
          struct ib_port_immutable *immutable)
{
 struct ib_port_attr attr;
 int err;

 err = mlx5_ib_query_port(ibdev, port_num, &attr);
 if (err)
  return err;

 immutable->pkey_tbl_len = attr.pkey_tbl_len;
 immutable->gid_tbl_len = attr.gid_tbl_len;
 immutable->core_cap_flags = get_core_cap_flags(ibdev);
 immutable->max_mad_size = IB_MGMT_MAD_SIZE;

 return 0;
}
