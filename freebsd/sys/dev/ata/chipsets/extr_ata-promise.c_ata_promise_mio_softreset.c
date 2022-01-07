
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct ata_pci_controller {int r_res2; } ;
struct ata_channel {int unit; } ;
typedef int device_t ;


 int ATA_A_IDS ;
 int ATA_A_RESET ;
 int ATA_CONTROL ;
 int ATA_COUNT ;
 int ATA_CYL_LSB ;
 int ATA_CYL_MSB ;
 int ATA_DEV (int ) ;
 int ATA_DRIVE ;
 int ATA_D_IBM ;
 int ATA_D_LBA ;
 int ATA_ERROR ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_MASTER ;
 int ATA_OUTB (int ,int,int) ;
 int ATA_SECTOR ;
 int ATA_STATUS ;
 int ATA_S_BUSY ;
 int DELAY (int) ;
 int ata_udelay (int) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static u_int32_t
ata_promise_mio_softreset(device_t dev, int port)
{
    struct ata_pci_controller *ctlr = device_get_softc(device_get_parent(dev));
    struct ata_channel *ch = device_get_softc(dev);
    int timeout;


    ATA_OUTB(ctlr->r_res2, 0x4e8 + (ch->unit << 8), port & 0x0f);


    ATA_IDX_OUTB(ch, ATA_DRIVE, ATA_D_IBM | ATA_D_LBA | ATA_DEV(ATA_MASTER));
    DELAY(10);
    ATA_IDX_OUTB(ch, ATA_CONTROL, ATA_A_IDS | ATA_A_RESET);
    ata_udelay(10000);
    ATA_IDX_OUTB(ch, ATA_CONTROL, ATA_A_IDS);
    ata_udelay(150000);
    ATA_IDX_INB(ch, ATA_ERROR);


    for (timeout = 0; timeout < 100; timeout++) {
 u_int8_t stat;

             ATA_IDX_INB(ch, ATA_ERROR);
 stat = ATA_IDX_INB(ch, ATA_STATUS);




 if (!(stat & ATA_S_BUSY)) {

  return ATA_IDX_INB(ch, ATA_COUNT) |
         (ATA_IDX_INB(ch, ATA_SECTOR) << 8) |
         (ATA_IDX_INB(ch, ATA_CYL_LSB) << 16) |
         (ATA_IDX_INB(ch, ATA_CYL_MSB) << 24);




 }

 if (!(stat & ATA_S_BUSY) || (stat == 0xff && timeout > 10))
     break;
 ata_udelay(100000);
    }
    return -1;
}
