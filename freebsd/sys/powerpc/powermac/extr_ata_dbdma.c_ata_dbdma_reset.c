
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {TYPE_2__ dma; } ;
struct ata_dbdma_channel {int next_dma_slot; int dbdma_mtx; TYPE_1__ sc_ch; int dbdma; } ;
typedef int device_t ;


 int ATA_DMA_ACTIVE ;
 int dbdma_insert_stop (int ,int ) ;
 int dbdma_set_current_cmd (int ,int ) ;
 int dbdma_stop (int ) ;
 struct ata_dbdma_channel* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ata_dbdma_reset(device_t dev)
{
 struct ata_dbdma_channel *sc = device_get_softc(dev);

 mtx_lock(&sc->dbdma_mtx);

 dbdma_stop(sc->dbdma);
 dbdma_insert_stop(sc->dbdma, 0);
 sc->next_dma_slot=1;
 dbdma_set_current_cmd(sc->dbdma, 0);

 sc->sc_ch.dma.flags &= ~ATA_DMA_ACTIVE;

 mtx_unlock(&sc->dbdma_mtx);
}
