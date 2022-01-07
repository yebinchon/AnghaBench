
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int (* query_gid ) (struct ib_device*,int ,int,union ib_gid*) ;} ;


 int EINVAL ;
 int ib_get_cached_gid (struct ib_device*,int ,int,union ib_gid*,struct ib_gid_attr*) ;
 scalar_t__ rdma_cap_roce_gid_table (struct ib_device*,int ) ;
 int stub1 (struct ib_device*,int ,int,union ib_gid*) ;

int ib_query_gid(struct ib_device *device,
   u8 port_num, int index, union ib_gid *gid,
   struct ib_gid_attr *attr)
{
 if (rdma_cap_roce_gid_table(device, port_num))
  return ib_get_cached_gid(device, port_num, index, gid, attr);

 if (attr)
  return -EINVAL;

 return device->query_gid(device, port_num, index, gid);
}
