
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct ib_device {TYPE_1__ dev; int hw_stats_ag; scalar_t__ hw_stats; } ;


 int ARRAY_SIZE (int *) ;
 int device_remove_file (TYPE_1__*,int ) ;
 int device_unregister (TYPE_1__*) ;
 int free_hsag (int *,int ) ;
 int free_port_list_attributes (struct ib_device*) ;
 int * ib_class_attributes ;
 int kfree (scalar_t__) ;
 int kobject_get (int *) ;

void ib_device_unregister_sysfs(struct ib_device *device)
{
 int i;


 kobject_get(&device->dev.kobj);

 free_port_list_attributes(device);

 if (device->hw_stats) {
  kfree(device->hw_stats);
  free_hsag(&device->dev.kobj, device->hw_stats_ag);
 }

 for (i = 0; i < ARRAY_SIZE(ib_class_attributes); ++i)
  device_remove_file(&device->dev, ib_class_attributes[i]);

 device_unregister(&device->dev);
}
