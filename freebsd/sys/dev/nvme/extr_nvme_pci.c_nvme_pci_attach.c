
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_controller {scalar_t__ msix_enabled; int * res; scalar_t__ tag; int * bar4_resource; int bar4_resource_id; int * resource; int resource_id; int dev; } ;
typedef int device_t ;


 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 int nvme_attach (int ) ;
 int nvme_ctrlr_allocate_bar (struct nvme_controller*) ;
 int nvme_ctrlr_setup_interrupts (struct nvme_controller*) ;
 int pci_enable_busmaster (int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
nvme_pci_attach(device_t dev)
{
 struct nvme_controller*ctrlr = DEVICE2SOFTC(dev);
 int status;

 ctrlr->dev = dev;
 status = nvme_ctrlr_allocate_bar(ctrlr);
 if (status != 0)
  goto bad;
 pci_enable_busmaster(dev);
 nvme_ctrlr_setup_interrupts(ctrlr);
 return nvme_attach(dev);
bad:
 if (ctrlr->resource != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      ctrlr->resource_id, ctrlr->resource);
 }

 if (ctrlr->bar4_resource != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      ctrlr->bar4_resource_id, ctrlr->bar4_resource);
 }

 if (ctrlr->tag)
  bus_teardown_intr(dev, ctrlr->res, ctrlr->tag);

 if (ctrlr->res)
  bus_release_resource(dev, SYS_RES_IRQ,
      rman_get_rid(ctrlr->res), ctrlr->res);

 if (ctrlr->msix_enabled)
  pci_release_msi(dev);

 return status;
}
