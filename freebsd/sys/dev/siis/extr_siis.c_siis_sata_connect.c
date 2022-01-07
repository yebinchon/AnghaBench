
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct siis_channel {int r_mem; int dev; } ;


 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int ATA_SS_DET_MASK ;
 int ATA_SS_DET_NO_DEVICE ;
 int ATA_SS_DET_PHY_OFFLINE ;
 int ATA_SS_DET_PHY_ONLINE ;
 int ATA_SS_IPM_ACTIVE ;
 int ATA_SS_IPM_MASK ;
 int ATA_SS_SPD_MASK ;
 int ATA_SS_SPD_NO_SPEED ;
 int DELAY (int) ;
 int SIIS_P_SERR ;
 int SIIS_P_SSTS ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static int
siis_sata_connect(struct siis_channel *ch)
{
 u_int32_t status;
 int timeout, found = 0;


 for (timeout = 0; timeout < 1000 ; timeout++) {
  status = ATA_INL(ch->r_mem, SIIS_P_SSTS);
  if ((status & ATA_SS_DET_MASK) != ATA_SS_DET_NO_DEVICE)
   found = 1;
  if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
      ((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
      ((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE))
   break;
  if ((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_OFFLINE) {
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

 ATA_OUTL(ch->r_mem, SIIS_P_SERR, 0xffffffff);
 return (1);
}
