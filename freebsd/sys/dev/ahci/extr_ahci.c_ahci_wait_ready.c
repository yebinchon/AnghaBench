
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ahci_channel {int dev; int r_mem; } ;


 int AHCI_P_TFD ;
 int ATA_INL (int ,int ) ;
 int ATA_S_BUSY ;
 int ATA_S_DRQ ;
 int DELAY (int) ;
 int EBUSY ;
 scalar_t__ MAX (int,int ) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static int
ahci_wait_ready(struct ahci_channel *ch, int t, int t0)
{
 int timeout = 0;
 uint32_t val;

 while ((val = ATA_INL(ch->r_mem, AHCI_P_TFD)) &
     (ATA_S_BUSY | ATA_S_DRQ)) {
  if (timeout > t) {
   if (t != 0) {
    device_printf(ch->dev,
        "AHCI reset: device not ready after %dms "
        "(tfd = %08x)\n",
        MAX(t, 0) + t0, val);
   }
   return (EBUSY);
  }
  DELAY(1000);
  timeout++;
 }
 if (bootverbose)
  device_printf(ch->dev, "AHCI reset: device ready after %dms\n",
      timeout + t0);
 return (0);
}
