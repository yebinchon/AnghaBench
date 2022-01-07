
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ahci_channel {int chcaps; int fbs_enabled; scalar_t__ pm_present; int r_mem; int (* start ) (struct ahci_channel*) ;} ;


 int AHCI_P_CMD ;
 int AHCI_P_CMD_FBSCP ;
 int AHCI_P_CMD_PMA ;
 int AHCI_P_CMD_ST ;
 int AHCI_P_FBS ;
 int AHCI_P_FBS_EN ;
 int AHCI_P_IS ;
 int AHCI_P_SERR ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int stub1 (struct ahci_channel*) ;

__attribute__((used)) static void
ahci_start(struct ahci_channel *ch, int fbs)
{
 u_int32_t cmd;


 if (ch->start)
  ch->start(ch);


 ATA_OUTL(ch->r_mem, AHCI_P_SERR, 0xFFFFFFFF);

 ATA_OUTL(ch->r_mem, AHCI_P_IS, 0xFFFFFFFF);

 if (ch->chcaps & AHCI_P_CMD_FBSCP) {
  ch->fbs_enabled = (fbs && ch->pm_present) ? 1 : 0;
  ATA_OUTL(ch->r_mem, AHCI_P_FBS,
      ch->fbs_enabled ? AHCI_P_FBS_EN : 0);
 }

 cmd = ATA_INL(ch->r_mem, AHCI_P_CMD);
 cmd &= ~AHCI_P_CMD_PMA;
 ATA_OUTL(ch->r_mem, AHCI_P_CMD, cmd | AHCI_P_CMD_ST |
     (ch->pm_present ? AHCI_P_CMD_PMA : 0));
}
