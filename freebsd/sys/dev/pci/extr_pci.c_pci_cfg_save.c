
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ pcix_location; } ;
struct TYPE_6__ {scalar_t__ pcie_location; } ;
struct TYPE_5__ {void* br_control; void* br_pribus; void* br_secbus; void* br_subbus; void* br_seclat; } ;
struct TYPE_8__ {int hdrtype; int * iov; TYPE_3__ pcix; TYPE_2__ pcie; void* subdevice; void* subvendor; TYPE_1__ bridge; void* maxlat; void* mingnt; void* revid; void* progif; void* subclass; void* baseclass; void* lattimer; void* cachelnsz; void* intpin; void* intline; void* cmdreg; void* device; void* vendor; } ;
struct pci_devinfo {TYPE_4__ cfg; } ;
typedef int device_t ;


 int PCIC_BASEPERIPH ;
 int PCIC_DISPLAY ;
 int PCIC_MEMORY ;
 int PCIC_STORAGE ;
 int PCIM_HDRTYPE ;



 int PCIR_BRIDGECTL_1 ;
 int PCIR_BRIDGECTL_2 ;
 int PCIR_CACHELNSZ ;
 int PCIR_CLASS ;
 int PCIR_COMMAND ;
 int PCIR_DEVICE ;
 int PCIR_INTLINE ;
 int PCIR_INTPIN ;
 int PCIR_LATTIMER ;
 int PCIR_MAXLAT ;
 int PCIR_MINGNT ;
 int PCIR_PRIBUS_1 ;
 int PCIR_PRIBUS_2 ;
 int PCIR_PROGIF ;
 int PCIR_REVID ;
 int PCIR_SECBUS_1 ;
 int PCIR_SECBUS_2 ;
 int PCIR_SECLAT_1 ;
 int PCIR_SECLAT_2 ;
 int PCIR_SUBBUS_1 ;
 int PCIR_SUBBUS_2 ;
 int PCIR_SUBCLASS ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBDEV_2 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_SUBVEND_2 ;
 int PCIR_VENDOR ;
 int PCI_POWERSTATE_D0 ;
 int PCI_POWERSTATE_D3 ;
 int pci_cfg_save_pcie (int ,struct pci_devinfo*) ;
 int pci_cfg_save_pcix (int ,struct pci_devinfo*) ;
 int pci_do_power_nodriver ;
 int pci_get_class (int ) ;
 int pci_get_powerstate (int ) ;
 int pci_iov_cfg_save (int ,struct pci_devinfo*) ;
 void* pci_read_config (int ,int ,int) ;
 int pci_set_powerstate (int ,int) ;

void
pci_cfg_save(device_t dev, struct pci_devinfo *dinfo, int setstate)
{
 uint32_t cls;
 int ps;
 dinfo->cfg.vendor = pci_read_config(dev, PCIR_VENDOR, 2);
 dinfo->cfg.device = pci_read_config(dev, PCIR_DEVICE, 2);
 dinfo->cfg.cmdreg = pci_read_config(dev, PCIR_COMMAND, 2);
 dinfo->cfg.intline = pci_read_config(dev, PCIR_INTLINE, 1);
 dinfo->cfg.intpin = pci_read_config(dev, PCIR_INTPIN, 1);
 dinfo->cfg.cachelnsz = pci_read_config(dev, PCIR_CACHELNSZ, 1);
 dinfo->cfg.lattimer = pci_read_config(dev, PCIR_LATTIMER, 1);
 dinfo->cfg.baseclass = pci_read_config(dev, PCIR_CLASS, 1);
 dinfo->cfg.subclass = pci_read_config(dev, PCIR_SUBCLASS, 1);
 dinfo->cfg.progif = pci_read_config(dev, PCIR_PROGIF, 1);
 dinfo->cfg.revid = pci_read_config(dev, PCIR_REVID, 1);
 switch (dinfo->cfg.hdrtype & PCIM_HDRTYPE) {
 case 128:
  dinfo->cfg.subvendor = pci_read_config(dev, PCIR_SUBVEND_0, 2);
  dinfo->cfg.subdevice = pci_read_config(dev, PCIR_SUBDEV_0, 2);
  dinfo->cfg.mingnt = pci_read_config(dev, PCIR_MINGNT, 1);
  dinfo->cfg.maxlat = pci_read_config(dev, PCIR_MAXLAT, 1);
  break;
 case 130:
  dinfo->cfg.bridge.br_seclat = pci_read_config(dev,
      PCIR_SECLAT_1, 1);
  dinfo->cfg.bridge.br_subbus = pci_read_config(dev,
      PCIR_SUBBUS_1, 1);
  dinfo->cfg.bridge.br_secbus = pci_read_config(dev,
      PCIR_SECBUS_1, 1);
  dinfo->cfg.bridge.br_pribus = pci_read_config(dev,
      PCIR_PRIBUS_1, 1);
  dinfo->cfg.bridge.br_control = pci_read_config(dev,
      PCIR_BRIDGECTL_1, 2);
  break;
 case 129:
  dinfo->cfg.bridge.br_seclat = pci_read_config(dev,
      PCIR_SECLAT_2, 1);
  dinfo->cfg.bridge.br_subbus = pci_read_config(dev,
      PCIR_SUBBUS_2, 1);
  dinfo->cfg.bridge.br_secbus = pci_read_config(dev,
      PCIR_SECBUS_2, 1);
  dinfo->cfg.bridge.br_pribus = pci_read_config(dev,
      PCIR_PRIBUS_2, 1);
  dinfo->cfg.bridge.br_control = pci_read_config(dev,
      PCIR_BRIDGECTL_2, 2);
  dinfo->cfg.subvendor = pci_read_config(dev, PCIR_SUBVEND_2, 2);
  dinfo->cfg.subdevice = pci_read_config(dev, PCIR_SUBDEV_2, 2);
  break;
 }

 if (dinfo->cfg.pcie.pcie_location != 0)
  pci_cfg_save_pcie(dev, dinfo);

 if (dinfo->cfg.pcix.pcix_location != 0)
  pci_cfg_save_pcix(dev, dinfo);
 cls = pci_get_class(dev);
 if (!setstate)
  return;
 switch (pci_do_power_nodriver)
 {
  case 0:
   return;
  case 1:
   if (cls == PCIC_STORAGE)
    return;

  case 2:
   if (cls == PCIC_DISPLAY || cls == PCIC_MEMORY ||
       cls == PCIC_BASEPERIPH)
    return;

  case 3:
   break;
 }




 ps = pci_get_powerstate(dev);
 if (ps != PCI_POWERSTATE_D0 && ps != PCI_POWERSTATE_D3)
  pci_set_powerstate(dev, PCI_POWERSTATE_D0);
 if (pci_get_powerstate(dev) != PCI_POWERSTATE_D3)
  pci_set_powerstate(dev, PCI_POWERSTATE_D3);
}
