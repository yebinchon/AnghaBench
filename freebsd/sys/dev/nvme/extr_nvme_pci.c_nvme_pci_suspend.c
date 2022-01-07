
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {int dummy; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int nvme_ctrlr_suspend (struct nvme_controller*) ;

__attribute__((used)) static int
nvme_pci_suspend(device_t dev)
{
 struct nvme_controller *ctrlr;

 ctrlr = DEVICE2SOFTC(dev);
 return (nvme_ctrlr_suspend(ctrlr));
}
