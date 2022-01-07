
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ib_gid {int dummy; } ib_gid ;
typedef int u8 ;
typedef int u16 ;
struct ib_device {int dummy; } ;


 int EPROTONOSUPPORT ;
 int ib_cache_gid_find_by_filter (struct ib_device*,union ib_gid const*,int ,int (*) (union ib_gid const*,struct ib_gid_attr const*,void*),void*,int *) ;
 int rdma_cap_roce_gid_table (struct ib_device*,int ) ;

int ib_find_gid_by_filter(struct ib_device *device,
     const union ib_gid *gid,
     u8 port_num,
     bool (*filter)(const union ib_gid *gid,
      const struct ib_gid_attr *,
      void *),
     void *context, u16 *index)
{

 if (!rdma_cap_roce_gid_table(device, port_num) && filter)
  return -EPROTONOSUPPORT;

 return ib_cache_gid_find_by_filter(device, gid,
        port_num, filter,
        context, index);
}
