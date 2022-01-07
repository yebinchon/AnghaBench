
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ahci_channel {scalar_t__ eslots; int dev; int r_mem; } ;


 int AHCI_P_CMD ;
 int AHCI_P_CMD_CR ;
 int AHCI_P_CMD_ST ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ahci_stop(struct ahci_channel *ch)
{
 u_int32_t cmd;
 int timeout;


 cmd = ATA_INL(ch->r_mem, AHCI_P_CMD);
 ATA_OUTL(ch->r_mem, AHCI_P_CMD, cmd & ~AHCI_P_CMD_ST);

 timeout = 0;
 do {
  DELAY(10);
  if (timeout++ > 50000) {
   device_printf(ch->dev, "stopping AHCI engine failed\n");
   break;
  }
 } while (ATA_INL(ch->r_mem, AHCI_P_CMD) & AHCI_P_CMD_CR);
 ch->eslots = 0;
}
