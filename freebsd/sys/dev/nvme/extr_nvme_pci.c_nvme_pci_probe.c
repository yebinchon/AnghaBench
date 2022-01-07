
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct nvme_controller {int quirks; } ;
struct _pcsid {char* desc; int quirks; scalar_t__ devid; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int BUS_PROBE_GENERIC ;
 struct nvme_controller* DEVICE2SOFTC (int ) ;
 int ENXIO ;
 scalar_t__ PCIC_STORAGE ;
 scalar_t__ PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0 ;
 scalar_t__ PCIS_STORAGE_NVM ;
 int device_set_desc (int ,char*) ;
 scalar_t__ nvme_match (int ,int ,struct _pcsid*) ;
 scalar_t__ pci_get_class (int ) ;
 int pci_get_devid (int ) ;
 scalar_t__ pci_get_progif (int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_subdevice (int ) ;
 struct _pcsid* pci_ids ;

__attribute__((used)) static int
nvme_pci_probe (device_t device)
{
 struct nvme_controller *ctrlr = DEVICE2SOFTC(device);
 struct _pcsid *ep;
 uint32_t devid;
 uint16_t subdevice;

 devid = pci_get_devid(device);
 subdevice = pci_get_subdevice(device);
 ep = pci_ids;

 while (ep->devid) {
  if (nvme_match(devid, subdevice, ep))
   break;
  ++ep;
 }
 if (ep->devid)
  ctrlr->quirks = ep->quirks;

 if (ep->desc) {
  device_set_desc(device, ep->desc);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
