
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rdma_hw_stats {int num_counters; char* name; struct rdma_hw_stats** attrs; int * names; int timestamp; } ;
struct kobject {int dummy; } ;
struct ib_port {struct rdma_hw_stats* hw_stats; struct rdma_hw_stats* hw_stats_ag; struct kobject kobj; } ;
struct TYPE_2__ {struct kobject kobj; } ;
struct ib_device {int (* get_hw_stats ) (struct ib_device*,struct rdma_hw_stats*,int ,int) ;struct rdma_hw_stats* hw_stats; struct rdma_hw_stats* hw_stats_ag; TYPE_1__ dev; struct rdma_hw_stats* (* alloc_hw_stats ) (struct ib_device*,int ) ;} ;
struct attribute_group {int num_counters; char* name; struct attribute_group** attrs; int * names; int timestamp; } ;


 int GFP_KERNEL ;
 struct rdma_hw_stats* alloc_hsa (int,int ,int ) ;
 struct rdma_hw_stats* alloc_hsa_lifespan (char*,int ) ;
 int jiffies ;
 int kfree (struct rdma_hw_stats*) ;
 struct rdma_hw_stats* kzalloc (int,int ) ;
 struct rdma_hw_stats* stub1 (struct ib_device*,int ) ;
 int stub2 (struct ib_device*,struct rdma_hw_stats*,int ,int) ;
 int sysfs_attr_init (struct rdma_hw_stats*) ;
 int sysfs_create_group (struct kobject*,struct rdma_hw_stats*) ;

__attribute__((used)) static void setup_hw_stats(struct ib_device *device, struct ib_port *port,
      u8 port_num)
{
 struct attribute_group *hsag;
 struct rdma_hw_stats *stats;
 int i, ret;

 stats = device->alloc_hw_stats(device, port_num);

 if (!stats)
  return;

 if (!stats->names || stats->num_counters <= 0)
  goto err_free_stats;





 hsag = kzalloc(sizeof(*hsag) +
         sizeof(void *) * (stats->num_counters + 2),
         GFP_KERNEL);
 if (!hsag)
  goto err_free_stats;

 ret = device->get_hw_stats(device, stats, port_num,
       stats->num_counters);
 if (ret != stats->num_counters)
  goto err_free_hsag;

 stats->timestamp = jiffies;

 hsag->name = "hw_counters";
 hsag->attrs = (void *)((char *)hsag + sizeof(*hsag));

 for (i = 0; i < stats->num_counters; i++) {
  hsag->attrs[i] = alloc_hsa(i, port_num, stats->names[i]);
  if (!hsag->attrs[i])
   goto err;
  sysfs_attr_init(hsag->attrs[i]);
 }


 hsag->attrs[i] = alloc_hsa_lifespan("lifespan", port_num);
 if (hsag->attrs[i])
  sysfs_attr_init(hsag->attrs[i]);

 if (port) {
  struct kobject *kobj = &port->kobj;
  ret = sysfs_create_group(kobj, hsag);
  if (ret)
   goto err;
  port->hw_stats_ag = hsag;
  port->hw_stats = stats;
 } else {
  struct kobject *kobj = &device->dev.kobj;
  ret = sysfs_create_group(kobj, hsag);
  if (ret)
   goto err;
  device->hw_stats_ag = hsag;
  device->hw_stats = stats;
 }

 return;

err:
 for (; i >= 0; i--)
  kfree(hsag->attrs[i]);
err_free_hsag:
 kfree(hsag);
err_free_stats:
 kfree(stats);
 return;
}
