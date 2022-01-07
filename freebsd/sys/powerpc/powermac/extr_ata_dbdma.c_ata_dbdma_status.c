
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;
struct ata_dbdma_channel {int dbdma; TYPE_2__ sc_ch; } ;
struct ata_channel {int dummy; } ;
typedef int device_t ;


 int ATA_ALTSTAT ;
 int ATA_DMA_ACTIVE ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_S_BUSY ;
 int DBDMA_STATUS_ACTIVE ;
 int DELAY (int) ;
 int dbdma_get_chan_status (int ) ;
 void* device_get_softc (int ) ;

__attribute__((used)) static int
ata_dbdma_status(device_t dev)
{
 struct ata_dbdma_channel *sc = device_get_softc(dev);
 struct ata_channel *ch = device_get_softc(dev);

 if (sc->sc_ch.dma.flags & ATA_DMA_ACTIVE) {
  return (!(dbdma_get_chan_status(sc->dbdma) &
      DBDMA_STATUS_ACTIVE));
 }

 if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY) {
  DELAY(100);
  if (ATA_IDX_INB(ch, ATA_ALTSTAT) & ATA_S_BUSY)
   return 0;
 }
 return 1;
}
