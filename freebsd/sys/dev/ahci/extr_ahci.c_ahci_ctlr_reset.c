
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int quirks; int caps; int r_mem; } ;
typedef int device_t ;


 int AHCI_CAP ;
 int AHCI_GHC ;
 int AHCI_GHC_AE ;
 int AHCI_GHC_HR ;
 int AHCI_Q_RESTORE_CAP ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int ENXIO ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

int
ahci_ctlr_reset(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);
 int timeout;


 ATA_OUTL(ctlr->r_mem, AHCI_GHC, AHCI_GHC_AE);

 ATA_OUTL(ctlr->r_mem, AHCI_GHC, AHCI_GHC_AE|AHCI_GHC_HR);
 for (timeout = 1000; timeout > 0; timeout--) {
  DELAY(1000);
  if ((ATA_INL(ctlr->r_mem, AHCI_GHC) & AHCI_GHC_HR) == 0)
   break;
 }
 if (timeout == 0) {
  device_printf(dev, "AHCI controller reset failure\n");
  return (ENXIO);
 }

 ATA_OUTL(ctlr->r_mem, AHCI_GHC, AHCI_GHC_AE);

 if (ctlr->quirks & AHCI_Q_RESTORE_CAP) {







  ATA_OUTL(ctlr->r_mem, AHCI_CAP, ctlr->caps);
 }

 return (0);
}
