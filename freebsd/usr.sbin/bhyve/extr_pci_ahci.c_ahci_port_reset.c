
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_port {int mult_sectors; int ssts; int sig; int tfd; int sctl; int atapi; int bctx; int xfermode; scalar_t__ sact; scalar_t__ serr; } ;


 int ATA_SC_SPD_MASK ;
 int ATA_SS_DET_NO_DEVICE ;
 int ATA_SS_DET_PHY_ONLINE ;
 int ATA_SS_IPM_ACTIVE ;
 int ATA_SS_SPD_GEN3 ;
 int ATA_S_DMA ;
 int ATA_S_DSC ;
 int ATA_S_READY ;
 int ATA_UDMA6 ;
 int PxSIG_ATA ;
 int PxSIG_ATAPI ;
 int ahci_write_reset_fis_d2h (struct ahci_port*) ;

__attribute__((used)) static void
ahci_port_reset(struct ahci_port *pr)
{
 pr->serr = 0;
 pr->sact = 0;
 pr->xfermode = ATA_UDMA6;
 pr->mult_sectors = 128;

 if (!pr->bctx) {
  pr->ssts = ATA_SS_DET_NO_DEVICE;
  pr->sig = 0xFFFFFFFF;
  pr->tfd = 0x7F;
  return;
 }
 pr->ssts = ATA_SS_DET_PHY_ONLINE | ATA_SS_IPM_ACTIVE;
 if (pr->sctl & ATA_SC_SPD_MASK)
  pr->ssts |= (pr->sctl & ATA_SC_SPD_MASK);
 else
  pr->ssts |= ATA_SS_SPD_GEN3;
 pr->tfd = (1 << 8) | ATA_S_DSC | ATA_S_DMA;
 if (!pr->atapi) {
  pr->sig = PxSIG_ATA;
  pr->tfd |= ATA_S_READY;
 } else
  pr->sig = PxSIG_ATAPI;
 ahci_write_reset_fis_d2h(pr);
}
