
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ata_channel {TYPE_1__ dma; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_BMCMD_PORT ;
 int ATA_BMCMD_START_STOP ;
 int ATA_BMSTAT_ACTIVE ;
 int ATA_BMSTAT_ERROR ;
 int ATA_BMSTAT_INTERRUPT ;
 int ATA_BMSTAT_MASK ;
 int ATA_BMSTAT_PORT ;
 int ATA_DMA_ACTIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_S_BUSY ;
 int DELAY (int) ;
 struct ata_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_acard_status(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    if (ch->dma.flags & ATA_DMA_ACTIVE) {
 int bmstat = ATA_IDX_INB(ch, ATA_BMSTAT_PORT) & ATA_BMSTAT_MASK;

 if ((bmstat & (ATA_BMSTAT_ACTIVE | ATA_BMSTAT_INTERRUPT)) !=
     ATA_BMSTAT_INTERRUPT)
     return 0;
 ATA_IDX_OUTB(ch, ATA_BMSTAT_PORT, bmstat & ~ATA_BMSTAT_ERROR);
 DELAY(1);
 ATA_IDX_OUTB(ch, ATA_BMCMD_PORT,
       ATA_IDX_INB(ch, ATA_BMCMD_PORT) & ~ATA_BMCMD_START_STOP);
 DELAY(1);
    }
    if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY) {
 DELAY(100);
 if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY)
     return 0;
    }
    return 1;
}
