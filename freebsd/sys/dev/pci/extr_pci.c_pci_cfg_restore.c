
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ msix_location; } ;
struct TYPE_10__ {scalar_t__ msi_location; } ;
struct TYPE_9__ {scalar_t__ pcix_location; } ;
struct TYPE_8__ {scalar_t__ pcie_location; } ;
struct TYPE_7__ {int br_control; int br_pribus; int br_secbus; int br_subbus; int br_seclat; } ;
struct TYPE_12__ {int hdrtype; int * iov; TYPE_5__ msix; TYPE_4__ msi; TYPE_3__ pcix; TYPE_2__ pcie; TYPE_1__ bridge; int maxlat; int mingnt; int revid; int progif; int lattimer; int cachelnsz; int intpin; int intline; int cmdreg; } ;
struct pci_devinfo {TYPE_6__ cfg; } ;
typedef int device_t ;


 int PCIM_HDRTYPE ;



 int PCIR_BRIDGECTL_1 ;
 int PCIR_BRIDGECTL_2 ;
 int PCIR_CACHELNSZ ;
 int PCIR_COMMAND ;
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
 scalar_t__ PCI_POWERSTATE_D0 ;
 int pci_cfg_restore_pcie (int ,struct pci_devinfo*) ;
 int pci_cfg_restore_pcix (int ,struct pci_devinfo*) ;
 scalar_t__ pci_get_powerstate (int ) ;
 int pci_iov_cfg_restore (int ,struct pci_devinfo*) ;
 int pci_restore_bars (int ) ;
 int pci_resume_msi (int ) ;
 int pci_resume_msix (int ) ;
 int pci_set_powerstate (int ,scalar_t__) ;
 int pci_write_config (int ,int ,int ,int) ;

void
pci_cfg_restore(device_t dev, struct pci_devinfo *dinfo)
{
 if (pci_get_powerstate(dev) != PCI_POWERSTATE_D0)
  pci_set_powerstate(dev, PCI_POWERSTATE_D0);
 pci_write_config(dev, PCIR_COMMAND, dinfo->cfg.cmdreg, 2);
 pci_write_config(dev, PCIR_INTLINE, dinfo->cfg.intline, 1);
 pci_write_config(dev, PCIR_INTPIN, dinfo->cfg.intpin, 1);
 pci_write_config(dev, PCIR_CACHELNSZ, dinfo->cfg.cachelnsz, 1);
 pci_write_config(dev, PCIR_LATTIMER, dinfo->cfg.lattimer, 1);
 pci_write_config(dev, PCIR_PROGIF, dinfo->cfg.progif, 1);
 pci_write_config(dev, PCIR_REVID, dinfo->cfg.revid, 1);
 switch (dinfo->cfg.hdrtype & PCIM_HDRTYPE) {
 case 128:
  pci_write_config(dev, PCIR_MINGNT, dinfo->cfg.mingnt, 1);
  pci_write_config(dev, PCIR_MAXLAT, dinfo->cfg.maxlat, 1);
  break;
 case 130:
  pci_write_config(dev, PCIR_SECLAT_1,
      dinfo->cfg.bridge.br_seclat, 1);
  pci_write_config(dev, PCIR_SUBBUS_1,
      dinfo->cfg.bridge.br_subbus, 1);
  pci_write_config(dev, PCIR_SECBUS_1,
      dinfo->cfg.bridge.br_secbus, 1);
  pci_write_config(dev, PCIR_PRIBUS_1,
      dinfo->cfg.bridge.br_pribus, 1);
  pci_write_config(dev, PCIR_BRIDGECTL_1,
      dinfo->cfg.bridge.br_control, 2);
  break;
 case 129:
  pci_write_config(dev, PCIR_SECLAT_2,
      dinfo->cfg.bridge.br_seclat, 1);
  pci_write_config(dev, PCIR_SUBBUS_2,
      dinfo->cfg.bridge.br_subbus, 1);
  pci_write_config(dev, PCIR_SECBUS_2,
      dinfo->cfg.bridge.br_secbus, 1);
  pci_write_config(dev, PCIR_PRIBUS_2,
      dinfo->cfg.bridge.br_pribus, 1);
  pci_write_config(dev, PCIR_BRIDGECTL_2,
      dinfo->cfg.bridge.br_control, 2);
  break;
 }
 pci_restore_bars(dev);




 if (dinfo->cfg.pcie.pcie_location != 0)
  pci_cfg_restore_pcie(dev, dinfo);
 if (dinfo->cfg.pcix.pcix_location != 0)
  pci_cfg_restore_pcix(dev, dinfo);


 if (dinfo->cfg.msi.msi_location != 0)
  pci_resume_msi(dev);
 if (dinfo->cfg.msix.msix_location != 0)
  pci_resume_msix(dev);





}
