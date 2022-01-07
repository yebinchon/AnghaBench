
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_request {int parent; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;
struct ata_dbdma_channel {int dbdma; TYPE_2__ sc_ch; } ;


 int ATA_DMA_ACTIVE ;
 int dbdma_wake (int ) ;
 struct ata_dbdma_channel* device_get_softc (int ) ;

__attribute__((used)) static int
ata_dbdma_start(struct ata_request *request)
{
 struct ata_dbdma_channel *sc = device_get_softc(request->parent);

 sc->sc_ch.dma.flags |= ATA_DMA_ACTIVE;
 dbdma_wake(sc->dbdma);
 return 0;
}
