
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ahci_channel {int listening; scalar_t__ pm_level; int caps; int r_mem; scalar_t__ pm_present; TYPE_1__* user; } ;
struct TYPE_2__ {int revision; } ;


 int AHCI_CAP_SSS ;
 int AHCI_P_CMD ;
 int AHCI_P_CMD_SUD ;
 int AHCI_P_SCTL ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int ATA_SC_DET_DISABLE ;
 int ATA_SC_DET_IDLE ;
 int ATA_SC_DET_RESET ;
 int ATA_SC_IPM_DIS_PARTIAL ;
 int ATA_SC_IPM_DIS_SLUMBER ;
 int ATA_SC_SPD_SPEED_GEN1 ;
 int ATA_SC_SPD_SPEED_GEN2 ;
 int ATA_SC_SPD_SPEED_GEN3 ;
 int DELAY (int) ;
 int ahci_ch_detval (struct ahci_channel*,int ) ;
 int ahci_sata_connect (struct ahci_channel*) ;

__attribute__((used)) static int
ahci_sata_phy_reset(struct ahci_channel *ch)
{
 int sata_rev;
 uint32_t val, detval;

 if (ch->listening) {
  val = ATA_INL(ch->r_mem, AHCI_P_CMD);
  val |= AHCI_P_CMD_SUD;
  ATA_OUTL(ch->r_mem, AHCI_P_CMD, val);
  ch->listening = 0;
 }
 sata_rev = ch->user[ch->pm_present ? 15 : 0].revision;
 if (sata_rev == 1)
  val = ATA_SC_SPD_SPEED_GEN1;
 else if (sata_rev == 2)
  val = ATA_SC_SPD_SPEED_GEN2;
 else if (sata_rev == 3)
  val = ATA_SC_SPD_SPEED_GEN3;
 else
  val = 0;
 detval = ahci_ch_detval(ch, ATA_SC_DET_RESET);
 ATA_OUTL(ch->r_mem, AHCI_P_SCTL,
     detval | val |
     ATA_SC_IPM_DIS_PARTIAL | ATA_SC_IPM_DIS_SLUMBER);
 DELAY(1000);
 detval = ahci_ch_detval(ch, ATA_SC_DET_IDLE);
 ATA_OUTL(ch->r_mem, AHCI_P_SCTL,
     detval | val | ((ch->pm_level > 0) ? 0 :
     (ATA_SC_IPM_DIS_PARTIAL | ATA_SC_IPM_DIS_SLUMBER)));
 if (!ahci_sata_connect(ch)) {
  if (ch->caps & AHCI_CAP_SSS) {
   val = ATA_INL(ch->r_mem, AHCI_P_CMD);
   val &= ~AHCI_P_CMD_SUD;
   ATA_OUTL(ch->r_mem, AHCI_P_CMD, val);
   ch->listening = 1;
  } else if (ch->pm_level > 0)
   ATA_OUTL(ch->r_mem, AHCI_P_SCTL, ATA_SC_DET_DISABLE);
  return (0);
 }
 return (1);
}
