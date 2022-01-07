
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ata_channel {scalar_t__ pm_level; int conntask; } ;
typedef int device_t ;


 int ATA_SERROR ;
 int ATA_SE_PHY_CHANGED ;
 int ATA_SSTATUS ;
 int ATA_SS_DET_MASK ;
 int ATA_SS_DET_PHY_ONLINE ;
 int ATA_SS_IPM_ACTIVE ;
 int ATA_SS_IPM_MASK ;
 int ATA_SS_SPD_MASK ;
 int ATA_SS_SPD_NO_SPEED ;
 scalar_t__ ata_sata_scr_read (struct ata_channel*,int,int ,int*) ;
 int ata_sata_scr_write (struct ata_channel*,int,int ,int) ;
 scalar_t__ bootverbose ;
 struct ata_channel* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
ata_sata_phy_check_events(device_t dev, int port)
{
    struct ata_channel *ch = device_get_softc(dev);
    u_int32_t error, status;

    if (ata_sata_scr_read(ch, port, ATA_SERROR, &error))
 return;


    if (error == 0xffffffff)
 return;


    if (error)
 ata_sata_scr_write(ch, port, ATA_SERROR, error);


    if ((error & ATA_SE_PHY_CHANGED) && (ch->pm_level == 0)) {
 if (bootverbose) {
     if (ata_sata_scr_read(ch, port, ATA_SSTATUS, &status)) {
      device_printf(dev, "PHYRDY change\n");
     } else if (((status & ATA_SS_DET_MASK) == ATA_SS_DET_PHY_ONLINE) &&
  ((status & ATA_SS_SPD_MASK) != ATA_SS_SPD_NO_SPEED) &&
  ((status & ATA_SS_IPM_MASK) == ATA_SS_IPM_ACTIVE)) {
      device_printf(dev, "CONNECT requested\n");
     } else
      device_printf(dev, "DISCONNECT requested\n");
 }
 taskqueue_enqueue(taskqueue_thread, &ch->conntask);
    }
}
