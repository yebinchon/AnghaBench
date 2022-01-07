
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct ib_pkey_cache {int table_len; scalar_t__* table; } ;
struct TYPE_2__ {int lock; struct ib_pkey_cache** pkey_cache; } ;
struct ib_device {TYPE_1__ cache; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ rdma_end_port (struct ib_device*) ;
 scalar_t__ rdma_start_port (struct ib_device*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int ib_find_exact_cached_pkey(struct ib_device *device,
         u8 port_num,
         u16 pkey,
         u16 *index)
{
 struct ib_pkey_cache *cache;
 unsigned long flags;
 int i;
 int ret = -ENOENT;

 if (port_num < rdma_start_port(device) || port_num > rdma_end_port(device))
  return -EINVAL;

 read_lock_irqsave(&device->cache.lock, flags);

 cache = device->cache.pkey_cache[port_num - rdma_start_port(device)];

 *index = -1;

 for (i = 0; i < cache->table_len; ++i)
  if (cache->table[i] == pkey) {
   *index = i;
   ret = 0;
   break;
  }

 read_unlock_irqrestore(&device->cache.lock, flags);

 return ret;
}
