
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ata_channel {int dev; } ;


 int ATA_SERROR ;
 int ATA_SSTATUS ;
 int ATA_SS_DET_MASK ;
 int ATA_SS_DET_PHY_ONLINE ;
 int ATA_SS_IPM_ACTIVE ;
 int ATA_SS_IPM_MASK ;
 int ATA_SS_SPD_MASK ;
 int ATA_SS_SPD_NO_SPEED ;
 scalar_t__ ata_sata_scr_read (struct ata_channel*,int,int ,int*) ;
 int ata_sata_scr_write (struct ata_channel*,int,int ,int) ;
 int ata_udelay (int) ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static int
ata_sata_connect(struct ata_channel *ch, int port, int quick)
{
    u_int32_t status;
    int timeout, t;


    timeout = (quick == 2) ? 0 : 100;
    t = 0;
    while (1) {
 if (ata_sata_scr_read(ch, port, ATA_SSTATUS, &status))
     return (0);
 if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
     ((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
     ((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE))
     break;
 if (++t > timeout)
     break;
 ata_udelay(10000);
    }
    if (bootverbose) {
 if (t > timeout) {
     if (port < 0) {
  device_printf(ch->dev, "SATA connect timeout status=%08x\n",
      status);
     } else {
  device_printf(ch->dev, "p%d: SATA connect timeout status=%08x\n",
      port, status);
     }
 } else if (port < 0) {
     device_printf(ch->dev, "SATA connect time=%dms status=%08x\n",
  t * 10, status);
 } else {
     device_printf(ch->dev, "p%d: SATA connect time=%dms status=%08x\n",
  port, t * 10, status);
 }
    }


    ata_sata_scr_write(ch, port, ATA_SERROR, 0xffffffff);

    return ((t > timeout) ? 0 : 1);
}
