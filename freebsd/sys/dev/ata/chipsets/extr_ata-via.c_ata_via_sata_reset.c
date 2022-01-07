
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ata_channel {scalar_t__ unit; scalar_t__ devices; } ;
typedef int device_t ;


 int ATA_DEV (int ) ;
 int ATA_DRIVE ;
 int ATA_D_IBM ;
 int ATA_D_LBA ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_MASTER ;
 int ATA_SLAVE ;
 int ATA_STATUS ;
 int ATA_S_BUSY ;
 int DELAY (int) ;
 int ata_generic_reset (int ) ;
 int ata_sata_phy_reset (int ,int,int ) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static void
ata_via_sata_reset(device_t dev)
{
 struct ata_channel *ch = device_get_softc(dev);
 int devs, count;
 uint8_t status;

 if (ch->unit == 0) {
  devs = ata_sata_phy_reset(dev, 0, 0);
  count = 0;
  do {
   ATA_IDX_OUTB(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA |
       ATA_DEV(ATA_MASTER));
   DELAY(1000);
   status = ATA_IDX_INB(ch, ATA_STATUS);
   count++;
  } while (status & ATA_S_BUSY && count < 100);

  devs += ata_sata_phy_reset(dev, 1, 0);
  count = 0;
  do {
   ATA_IDX_OUTB(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA |
       ATA_DEV(ATA_SLAVE));
   DELAY(1000);
   status = ATA_IDX_INB(ch, ATA_STATUS);
   count++;
  } while (status & ATA_S_BUSY && count < 100);
 } else
  devs = 1;
 if (devs)
  ata_generic_reset(dev);
 else
  ch->devices = 0;
}
