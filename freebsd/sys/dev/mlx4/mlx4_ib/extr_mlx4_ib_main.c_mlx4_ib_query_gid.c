
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_device {int dummy; } ;


 int EAGAIN ;
 int ENODEV ;
 int __mlx4_ib_query_gid (struct ib_device*,int ,int,union ib_gid*,int ) ;
 int ib_get_cached_gid (struct ib_device*,int ,int,union ib_gid*,int *) ;
 int memcpy (union ib_gid*,int *,int) ;
 int rdma_cap_roce_gid_table (struct ib_device*,int ) ;
 scalar_t__ rdma_protocol_ib (struct ib_device*,int ) ;
 int rdma_protocol_roce (struct ib_device*,int ) ;
 int zgid ;

__attribute__((used)) static int mlx4_ib_query_gid(struct ib_device *ibdev, u8 port, int index,
        union ib_gid *gid)
{
 int ret;

 if (rdma_protocol_ib(ibdev, port))
  return __mlx4_ib_query_gid(ibdev, port, index, gid, 0);

 if (!rdma_protocol_roce(ibdev, port))
  return -ENODEV;

 if (!rdma_cap_roce_gid_table(ibdev, port))
  return -ENODEV;

 ret = ib_get_cached_gid(ibdev, port, index, gid, ((void*)0));
 if (ret == -EAGAIN) {
  memcpy(gid, &zgid, sizeof(*gid));
  return 0;
 }

 return ret;
}
