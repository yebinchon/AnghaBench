
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct ib_pkey_cache {int table_len; int * table; } ;
struct TYPE_2__ {int lock; struct ib_pkey_cache** pkey_cache; } ;
struct ib_device {TYPE_1__ cache; } ;


 int EINVAL ;
 scalar_t__ rdma_end_port (struct ib_device*) ;
 scalar_t__ rdma_start_port (struct ib_device*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int ib_get_cached_pkey(struct ib_device *device,
         u8 port_num,
         int index,
         u16 *pkey)
{
 struct ib_pkey_cache *cache;
 unsigned long flags;
 int ret = 0;

 if (port_num < rdma_start_port(device) || port_num > rdma_end_port(device))
  return -EINVAL;

 read_lock_irqsave(&device->cache.lock, flags);

 cache = device->cache.pkey_cache[port_num - rdma_start_port(device)];

 if (index < 0 || index >= cache->table_len)
  ret = -EINVAL;
 else
  *pkey = cache->table[index];

 read_unlock_irqrestore(&device->cache.lock, flags);

 return ret;
}
