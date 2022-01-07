
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int status; } ;
struct TYPE_4__ {int segsize; int reset; int load; int stop; int start; } ;
struct TYPE_6__ {TYPE_2__ hw; TYPE_1__ dma; } ;
struct ata_dbdma_channel {int next_dma_slot; int dbdma_mtx; TYPE_3__ sc_ch; int dbdma; int dbdma_offset; int dbdma_regs; } ;
typedef int device_t ;


 int DEV_BSIZE ;
 int MTX_DEF ;
 int ata_dbdma_load ;
 int ata_dbdma_reset ;
 int ata_dbdma_start ;
 int ata_dbdma_status ;
 int ata_dbdma_stop ;
 int ata_dmainit (int ) ;
 int bus_get_dma_tag (int ) ;
 int dbdma_allocate_channel (int ,int ,int ,int,int *) ;
 int dbdma_insert_stop (int ,int ) ;
 int dbdma_set_wait_selector (int ,int,int) ;
 struct ata_dbdma_channel* device_get_softc (int ) ;
 int mtx_init (int *,char*,int *,int ) ;

void
ata_dbdma_dmainit(device_t dev)
{
 struct ata_dbdma_channel *sc = device_get_softc(dev);
 int error;

 error = dbdma_allocate_channel(sc->dbdma_regs, sc->dbdma_offset,
     bus_get_dma_tag(dev), 256, &sc->dbdma);

 dbdma_set_wait_selector(sc->dbdma,1 << 7, 1 << 7);

 dbdma_insert_stop(sc->dbdma,0);
 sc->next_dma_slot=1;

 sc->sc_ch.dma.start = ata_dbdma_start;
 sc->sc_ch.dma.stop = ata_dbdma_stop;
 sc->sc_ch.dma.load = ata_dbdma_load;
 sc->sc_ch.dma.reset = ata_dbdma_reset;





 sc->sc_ch.dma.segsize = 126 * DEV_BSIZE;
 ata_dmainit(dev);

 sc->sc_ch.hw.status = ata_dbdma_status;

 mtx_init(&sc->dbdma_mtx, "ATA DBDMA", ((void*)0), MTX_DEF);
}
