
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; int parent; } ;
struct ib_device {int phys_port_cnt; scalar_t__ alloc_hw_stats; int ports_parent; int name; int dma_device; struct device dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int add_port (struct ib_device*,int,int (*) (struct ib_device*,u8,struct kobject*)) ;
 int dev_set_name (struct device*,char*,int ) ;
 int device_add (struct device*) ;
 int device_create_file (struct device*,int ) ;
 int device_unregister (struct device*) ;
 int free_port_list_attributes (struct ib_device*) ;
 int * ib_class_attributes ;
 int kobject_create_and_add (char*,int *) ;
 scalar_t__ rdma_cap_ib_switch (struct ib_device*) ;
 int setup_hw_stats (struct ib_device*,int *,int ) ;

int ib_device_register_sysfs(struct ib_device *device,
        int (*port_callback)(struct ib_device *,
        u8, struct kobject *))
{
 struct device *class_dev = &device->dev;
 int ret;
 int i;

 device->dev.parent = device->dma_device;
 ret = dev_set_name(class_dev, "%s", device->name);
 if (ret)
  return ret;

 ret = device_add(class_dev);
 if (ret)
  goto err;

 for (i = 0; i < ARRAY_SIZE(ib_class_attributes); ++i) {
  ret = device_create_file(class_dev, ib_class_attributes[i]);
  if (ret)
   goto err_unregister;
 }

 device->ports_parent = kobject_create_and_add("ports",
            &class_dev->kobj);
 if (!device->ports_parent) {
  ret = -ENOMEM;
  goto err_put;
 }

 if (rdma_cap_ib_switch(device)) {
  ret = add_port(device, 0, port_callback);
  if (ret)
   goto err_put;
 } else {
  for (i = 1; i <= device->phys_port_cnt; ++i) {
   ret = add_port(device, i, port_callback);
   if (ret)
    goto err_put;
  }
 }

 if (device->alloc_hw_stats)
  setup_hw_stats(device, ((void*)0), 0);

 return 0;

err_put:
 free_port_list_attributes(device);

err_unregister:
 device_unregister(class_dev);

err:
 return ret;
}
