
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct ib_gid_table {int dummy; } ;
struct TYPE_2__ {struct ib_gid_table** gid_cache; } ;
struct ib_device {size_t phys_port_cnt; TYPE_1__ cache; } ;


 int cleanup_gid_table_port (struct ib_device*,scalar_t__,struct ib_gid_table*) ;
 scalar_t__ rdma_start_port (struct ib_device*) ;

__attribute__((used)) static void gid_table_cleanup_one(struct ib_device *ib_dev)
{
 struct ib_gid_table **table = ib_dev->cache.gid_cache;
 u8 port;

 if (!table)
  return;

 for (port = 0; port < ib_dev->phys_port_cnt; port++)
  cleanup_gid_table_port(ib_dev, port + rdma_start_port(ib_dev),
           table[port]);
}
