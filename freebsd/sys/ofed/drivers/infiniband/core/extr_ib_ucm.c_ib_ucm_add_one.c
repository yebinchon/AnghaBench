
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int dev; int kobj; int owner; } ;
struct TYPE_8__ {int release; int devt; int parent; int * class; } ;
struct ib_ucm_device {int devnum; TYPE_5__ cdev; TYPE_1__ dev; struct ib_device* ib_dev; } ;
struct ib_device {int dma_device; int alloc_ucontext; } ;
typedef scalar_t__ dev_t ;


 int GFP_KERNEL ;
 scalar_t__ IB_UCM_BASE_DEV ;
 int IB_UCM_MAX_DEVICES ;
 int THIS_MODULE ;
 scalar_t__ cdev_add (TYPE_5__*,scalar_t__,int) ;
 int cdev_del (TYPE_5__*) ;
 int cdev_init (TYPE_5__*,int *) ;
 int clear_bit (int,int ) ;
 int cm_class ;
 int dev_attr_ibdev ;
 int dev_map ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 scalar_t__ device_create_file (TYPE_1__*,int *) ;
 scalar_t__ device_register (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int find_first_zero_bit (int ,int) ;
 int find_overflow_devnum () ;
 int ib_set_client_data (struct ib_device*,int *,struct ib_ucm_device*) ;
 int ib_ucm_release_dev ;
 int kfree (struct ib_ucm_device*) ;
 int kobject_set_name (int *,char*,int) ;
 struct ib_ucm_device* kzalloc (int,int ) ;
 scalar_t__ overflow_maj ;
 int overflow_map ;
 int rdma_cap_ib_cm (struct ib_device*,int) ;
 int set_bit (int,int ) ;
 int ucm_client ;
 int ucm_fops ;

__attribute__((used)) static void ib_ucm_add_one(struct ib_device *device)
{
 int devnum;
 dev_t base;
 struct ib_ucm_device *ucm_dev;

 if (!device->alloc_ucontext || !rdma_cap_ib_cm(device, 1))
  return;

 ucm_dev = kzalloc(sizeof *ucm_dev, GFP_KERNEL);
 if (!ucm_dev)
  return;

 ucm_dev->ib_dev = device;

 devnum = find_first_zero_bit(dev_map, IB_UCM_MAX_DEVICES);
 if (devnum >= IB_UCM_MAX_DEVICES) {
  devnum = find_overflow_devnum();
  if (devnum < 0)
   goto err;

  ucm_dev->devnum = devnum + IB_UCM_MAX_DEVICES;
  base = devnum + overflow_maj;
  set_bit(devnum, overflow_map);
 } else {
  ucm_dev->devnum = devnum;
  base = devnum + IB_UCM_BASE_DEV;
  set_bit(devnum, dev_map);
 }

 cdev_init(&ucm_dev->cdev, &ucm_fops);
 ucm_dev->cdev.owner = THIS_MODULE;
 kobject_set_name(&ucm_dev->cdev.kobj, "ucm%d", ucm_dev->devnum);
 if (cdev_add(&ucm_dev->cdev, base, 1))
  goto err;

 ucm_dev->dev.class = &cm_class;
 ucm_dev->dev.parent = device->dma_device;
 ucm_dev->dev.devt = ucm_dev->cdev.dev;
 ucm_dev->dev.release = ib_ucm_release_dev;
 dev_set_name(&ucm_dev->dev, "ucm%d", ucm_dev->devnum);
 if (device_register(&ucm_dev->dev))
  goto err_cdev;

 if (device_create_file(&ucm_dev->dev, &dev_attr_ibdev))
  goto err_dev;

 ib_set_client_data(device, &ucm_client, ucm_dev);
 return;

err_dev:
 device_unregister(&ucm_dev->dev);
err_cdev:
 cdev_del(&ucm_dev->cdev);
 if (ucm_dev->devnum < IB_UCM_MAX_DEVICES)
  clear_bit(devnum, dev_map);
 else
  clear_bit(devnum, overflow_map);
err:
 kfree(ucm_dev);
 return;
}
