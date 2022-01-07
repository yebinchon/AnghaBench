
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int dev; } ;
typedef int device_t ;



device_t
nvme_ctrlr_get_device(struct nvme_controller *ctrlr)
{

 return (ctrlr->dev);
}
