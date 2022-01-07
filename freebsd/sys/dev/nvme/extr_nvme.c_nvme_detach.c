
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int dummy; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int nvme_ctrlr_destruct (struct nvme_controller*,int ) ;

int
nvme_detach (device_t dev)
{
 struct nvme_controller *ctrlr = DEVICE2SOFTC(dev);

 nvme_ctrlr_destruct(ctrlr, dev);
 return (0);
}
