
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {scalar_t__ msix_enabled; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int nvme_detach (int ) ;
 int pci_disable_busmaster (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
nvme_pci_detach(device_t dev)
{
 struct nvme_controller*ctrlr = DEVICE2SOFTC(dev);
 int rv;

 rv = nvme_detach(dev);
 if (ctrlr->msix_enabled)
  pci_release_msi(dev);
 pci_disable_busmaster(dev);
 return (rv);
}
