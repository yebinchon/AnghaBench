
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct ib_uverbs_device {scalar_t__ devnum; int kobj; int comp; int refcount; int ib_dev; TYPE_2__ cdev; TYPE_1__* dev; } ;
struct ib_device {scalar_t__ disassociate_ucontext; } ;
struct TYPE_3__ {int kobj; } ;


 scalar_t__ IB_UVERBS_MAX_DEVICES ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cdev_del (TYPE_2__*) ;
 int clear_bit (scalar_t__,int ) ;
 int dev_map ;
 int dev_set_drvdata (TYPE_1__*,int *) ;
 int device_destroy (int ,int ) ;
 int device_group ;
 int ib_uverbs_comp_dev (struct ib_uverbs_device*) ;
 int ib_uverbs_free_hw_resources (struct ib_uverbs_device*,struct ib_device*) ;
 int kobject_put (int *) ;
 int overflow_map ;
 int rcu_assign_pointer (int ,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int uverbs_class ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ib_uverbs_remove_one(struct ib_device *device, void *client_data)
{
 struct ib_uverbs_device *uverbs_dev = client_data;
 int wait_clients = 1;

 if (!uverbs_dev)
  return;

 sysfs_remove_group(&uverbs_dev->dev->kobj, &device_group);
 dev_set_drvdata(uverbs_dev->dev, ((void*)0));
 device_destroy(uverbs_class, uverbs_dev->cdev.dev);
 cdev_del(&uverbs_dev->cdev);

 if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
  clear_bit(uverbs_dev->devnum, dev_map);
 else
  clear_bit(uverbs_dev->devnum - IB_UVERBS_MAX_DEVICES, overflow_map);

 if (device->disassociate_ucontext) {
  rcu_assign_pointer(uverbs_dev->ib_dev, ((void*)0));
  ib_uverbs_free_hw_resources(uverbs_dev, device);
  wait_clients = 0;
 }

 if (atomic_dec_and_test(&uverbs_dev->refcount))
  ib_uverbs_comp_dev(uverbs_dev);
 if (wait_clients)
  wait_for_completion(&uverbs_dev->comp);
 kobject_put(&uverbs_dev->kobj);
}
