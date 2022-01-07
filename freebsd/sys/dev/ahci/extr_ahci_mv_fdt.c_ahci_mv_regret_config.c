
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_controller {int r_mem; } ;


 int AHCI_VENDOR_SPECIFIC_0_ADDR ;
 int AHCI_VENDOR_SPECIFIC_0_DATA ;
 int ATA_OUTL (int ,int ,int) ;

__attribute__((used)) static void
ahci_mv_regret_config(struct ahci_controller *ctlr)
{






 ATA_OUTL(ctlr->r_mem, AHCI_VENDOR_SPECIFIC_0_ADDR, 0x4);
 ATA_OUTL(ctlr->r_mem, AHCI_VENDOR_SPECIFIC_0_DATA, 0x80);
}
