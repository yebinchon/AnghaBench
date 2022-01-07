
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mvs_channel {int r_mem; int dev; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int DELAY (int) ;
 int SATA_SE ;
 int SATA_SS ;
 int SATA_SS_DET_MASK ;
 int SATA_SS_DET_NO_DEVICE ;
 int SATA_SS_DET_PHY_OFFLINE ;
 int SATA_SS_DET_PHY_ONLINE ;
 int SATA_SS_IPM_ACTIVE ;
 int SATA_SS_IPM_MASK ;
 int SATA_SS_SPD_MASK ;
 int SATA_SS_SPD_NO_SPEED ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static int
mvs_sata_connect(struct mvs_channel *ch)
{
 u_int32_t status;
 int timeout, found = 0;


 for (timeout = 0; timeout < 1000 ; timeout++) {
  status = ATA_INL(ch->r_mem, SATA_SS);
  if ((status & SATA_SS_DET_MASK) != SATA_SS_DET_NO_DEVICE)
   found = 1;
  if (((status & SATA_SS_DET_MASK) == SATA_SS_DET_PHY_ONLINE) &&
      ((status & SATA_SS_SPD_MASK) != SATA_SS_SPD_NO_SPEED) &&
      ((status & SATA_SS_IPM_MASK) == SATA_SS_IPM_ACTIVE))
   break;
  if ((status & SATA_SS_DET_MASK) == SATA_SS_DET_PHY_OFFLINE) {
   if (bootverbose) {
    device_printf(ch->dev, "SATA offline status=%08x\n",
        status);
   }
   return (0);
  }
  if (found == 0 && timeout >= 100)
   break;
  DELAY(100);
 }
 if (timeout >= 1000 || !found) {
  if (bootverbose) {
   device_printf(ch->dev,
       "SATA connect timeout time=%dus status=%08x\n",
       timeout * 100, status);
  }
  return (0);
 }
 if (bootverbose) {
  device_printf(ch->dev, "SATA connect time=%dus status=%08x\n",
      timeout * 100, status);
 }

 ATA_OUTL(ch->r_mem, SATA_SE, 0xffffffff);
 return (1);
}
