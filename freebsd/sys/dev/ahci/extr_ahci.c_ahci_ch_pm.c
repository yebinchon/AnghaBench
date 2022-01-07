
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ahci_channel {scalar_t__ numrslots; int pm_level; int r_mem; } ;


 int AHCI_P_CMD ;
 int AHCI_P_CMD_PARTIAL ;
 int AHCI_P_CMD_SLUMBER ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int ) ;

__attribute__((used)) static void
ahci_ch_pm(void *arg)
{
 struct ahci_channel *ch = (struct ahci_channel *)arg;
 uint32_t work;

 if (ch->numrslots != 0)
  return;
 work = ATA_INL(ch->r_mem, AHCI_P_CMD);
 if (ch->pm_level == 4)
  work |= AHCI_P_CMD_PARTIAL;
 else
  work |= AHCI_P_CMD_SLUMBER;
 ATA_OUTL(ch->r_mem, AHCI_P_CMD, work);
}
