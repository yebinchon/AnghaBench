
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int dummy; } ;
struct nvme_consumer {int dummy; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int M_TEMP ;
 scalar_t__ devclass_get_devices (int ,int **,int*) ;
 int free (int *,int ) ;
 int nvme_devclass ;
 int nvme_notify (struct nvme_consumer*,struct nvme_controller*) ;

__attribute__((used)) static void
nvme_notify_new_consumer(struct nvme_consumer *cons)
{
 device_t *devlist;
 struct nvme_controller *ctrlr;
 int dev_idx, devcount;

 if (devclass_get_devices(nvme_devclass, &devlist, &devcount))
  return;

 for (dev_idx = 0; dev_idx < devcount; dev_idx++) {
  ctrlr = DEVICE2SOFTC(devlist[dev_idx]);
  nvme_notify(cons, ctrlr);
 }

 free(devlist, M_TEMP);
}
