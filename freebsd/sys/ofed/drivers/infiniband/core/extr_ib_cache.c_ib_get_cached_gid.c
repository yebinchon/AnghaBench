
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef size_t u8 ;
struct ib_gid_table {int rwlock; } ;
struct ib_gid_attr {int dummy; } ;
struct TYPE_2__ {struct ib_gid_table** gid_cache; } ;
struct ib_device {TYPE_1__ cache; } ;


 int EINVAL ;
 int __ib_cache_gid_get (struct ib_device*,size_t,int,union ib_gid*,struct ib_gid_attr*) ;
 size_t rdma_end_port (struct ib_device*) ;
 size_t rdma_start_port (struct ib_device*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int ib_get_cached_gid(struct ib_device *device,
        u8 port_num,
        int index,
        union ib_gid *gid,
        struct ib_gid_attr *gid_attr)
{
 int res;
 unsigned long flags;
 struct ib_gid_table **ports_table = device->cache.gid_cache;
 struct ib_gid_table *table = ports_table[port_num - rdma_start_port(device)];

 if (port_num < rdma_start_port(device) || port_num > rdma_end_port(device))
  return -EINVAL;

 read_lock_irqsave(&table->rwlock, flags);
 res = __ib_cache_gid_get(device, port_num, index, gid, gid_attr);
 read_unlock_irqrestore(&table->rwlock, flags);

 return res;
}
