
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int ccc; int cccv; int r_mem; } ;
typedef int device_t ;


 int AHCI_CCCC ;
 int AHCI_CCCC_CC_SHIFT ;
 int AHCI_CCCC_EN ;
 int AHCI_CCCC_INT_MASK ;
 int AHCI_CCCC_INT_SHIFT ;
 int AHCI_CCCC_TV_SHIFT ;
 int AHCI_CCCP ;
 int AHCI_GHC ;
 int AHCI_GHC_IE ;
 int AHCI_IS ;
 int AHCI_PI ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 scalar_t__ bootverbose ;
 struct ahci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;

int
ahci_ctlr_setup(device_t dev)
{
 struct ahci_controller *ctlr = device_get_softc(dev);

 ATA_OUTL(ctlr->r_mem, AHCI_IS, ATA_INL(ctlr->r_mem, AHCI_IS));

 if (ctlr->ccc) {
  ATA_OUTL(ctlr->r_mem, AHCI_CCCP, ATA_INL(ctlr->r_mem, AHCI_PI));
  ATA_OUTL(ctlr->r_mem, AHCI_CCCC,
      (ctlr->ccc << AHCI_CCCC_TV_SHIFT) |
      (4 << AHCI_CCCC_CC_SHIFT) |
      AHCI_CCCC_EN);
  ctlr->cccv = (ATA_INL(ctlr->r_mem, AHCI_CCCC) &
      AHCI_CCCC_INT_MASK) >> AHCI_CCCC_INT_SHIFT;
  if (bootverbose) {
   device_printf(dev,
       "CCC with %dms/4cmd enabled on vector %d\n",
       ctlr->ccc, ctlr->cccv);
  }
 }

 ATA_OUTL(ctlr->r_mem, AHCI_GHC,
     ATA_INL(ctlr->r_mem, AHCI_GHC) | AHCI_GHC_IE);
 return (0);
}
