
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct resource {int dummy; } ;
struct TYPE_5__ {int begin_transaction; } ;
struct ata_channel {int flags; TYPE_2__ hw; scalar_t__ unit; TYPE_1__* r_io; } ;
struct TYPE_6__ {int dbdma_rid; struct ata_channel sc_ch; void* dbdma_regs; } ;
struct ata_macio_softc {int rev; int* udmaconf; int* wdmaconf; int* pioconf; TYPE_3__ sc_ch; int * sc_mem; } ;
typedef int driver_intr_t ;
typedef int device_t ;
struct TYPE_4__ {int offset; int * res; } ;


 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_DATA ;
 int ATA_INTR_FLAGS ;
 int ATA_MACIO_ALTOFFSET ;
 int ATA_MACIO_REGGAP ;
 int ATA_MACIO_TIMINGREG ;
 int ATA_NO_ATAPI_DMA ;
 int ATA_USE_16BIT ;
 int ENXIO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ata_attach (int ) ;
 int ata_dbdma_dmainit (int ) ;
 int ata_default_registers (int ) ;
 int ata_generic_hw (int ) ;
 scalar_t__ ata_interrupt ;
 int ata_macio_begin_transaction ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_read_4 (int *,int ) ;
 int bus_setup_intr (int ,struct resource*,int ,int *,int *,struct ata_macio_softc*,void**) ;
 struct ata_macio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ata_macio_attach(device_t dev)
{
 struct ata_macio_softc *sc = device_get_softc(dev);
 uint32_t timingreg;
 struct ata_channel *ch;
 int rid, i;





 rid = 0;
 ch = &sc->sc_ch.sc_ch;
 sc->sc_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem == ((void*)0)) {
  device_printf(dev, "could not allocate memory\n");
  return (ENXIO);
 }




 for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
  ch->r_io[i].res = sc->sc_mem;
  ch->r_io[i].offset = i * ATA_MACIO_REGGAP;
 }
 ch->r_io[ATA_CONTROL].res = sc->sc_mem;
 ch->r_io[ATA_CONTROL].offset = ATA_MACIO_ALTOFFSET;
 ata_default_registers(dev);

 ch->unit = 0;
 ch->flags |= ATA_USE_16BIT | ATA_NO_ATAPI_DMA;
 ata_generic_hw(dev);
 sc->sc_ch.dbdma_rid = 1;
 sc->sc_ch.dbdma_regs = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->sc_ch.dbdma_rid, RF_ACTIVE);

 ata_dbdma_dmainit(dev);


 timingreg = bus_read_4(sc->sc_mem, ATA_MACIO_TIMINGREG);
 if (sc->rev == 4) {
  sc->udmaconf[0] = sc->udmaconf[1] = timingreg & 0x1ff00000;
  sc->wdmaconf[0] = sc->wdmaconf[1] = timingreg & 0x001ffc00;
  sc->pioconf[0] = sc->pioconf[1] = timingreg & 0x000003ff;
 } else {
  sc->udmaconf[0] = sc->udmaconf[1] = 0;
  sc->wdmaconf[0] = sc->wdmaconf[1] = timingreg & 0xfffff800;
  sc->pioconf[0] = sc->pioconf[1] = timingreg & 0x000007ff;
 }
 sc->sc_ch.sc_ch.hw.begin_transaction = ata_macio_begin_transaction;

 return ata_attach(dev);
}
