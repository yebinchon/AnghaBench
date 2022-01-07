
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * class; int * parent; } ;
struct ib_device {int port_list; int client_data_list; int client_data_lock; int event_handler_lock; int event_handler_list; TYPE_1__ dev; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int dev_set_drvdata (TYPE_1__*,struct ib_device*) ;
 int device_initialize (TYPE_1__*) ;
 int ib_class ;
 struct ib_device* kzalloc (size_t,int ) ;
 int linux_root_device ;
 int spin_lock_init (int *) ;

struct ib_device *ib_alloc_device(size_t size)
{
 struct ib_device *device;

 if (WARN_ON(size < sizeof(struct ib_device)))
  return ((void*)0);

 device = kzalloc(size, GFP_KERNEL);
 if (!device)
  return ((void*)0);

 device->dev.parent = &linux_root_device;
 device->dev.class = &ib_class;
 device_initialize(&device->dev);

 dev_set_drvdata(&device->dev, device);

 INIT_LIST_HEAD(&device->event_handler_list);
 spin_lock_init(&device->event_handler_lock);
 spin_lock_init(&device->client_data_lock);
 INIT_LIST_HEAD(&device->client_data_list);
 INIT_LIST_HEAD(&device->port_list);

 return device;
}
