
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_5__ {int begin_transaction; } ;
struct ata_channel {TYPE_2__ hw; int flags; scalar_t__ unit; TYPE_1__* r_io; } ;
struct TYPE_6__ {int dbdma_rid; struct ata_channel sc_ch; int dbdma_offset; int * dbdma_regs; } ;
struct ata_kauai_softc {int* pioconf; TYPE_3__ sc_ch; int * sc_memr; scalar_t__* wdmaconf; scalar_t__* udmaconf; } ;
typedef int driver_intr_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ offset; int * res; } ;


 int ATA_COMMAND ;
 size_t ATA_CONTROL ;
 int ATA_DATA ;
 int ATA_INTR_FLAGS ;
 scalar_t__ ATA_KAUAI_ALTOFFSET ;
 int ATA_KAUAI_DBDMAOFFSET ;
 int ATA_KAUAI_REGGAP ;
 scalar_t__ ATA_KAUAI_REGOFFSET ;
 int ATA_NO_ATAPI_DMA ;
 int ATA_USE_16BIT ;
 int ENXIO ;
 int PCIR_BARS ;
 int PIO_CONFIG_REG ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int ata_attach (int ) ;
 int ata_dbdma_dmainit (int ) ;
 int ata_default_registers (int ) ;
 int ata_generic_hw (int ) ;
 int ata_kauai_begin_transaction ;
 scalar_t__ ata_kauai_dma_interrupt ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_read_4 (int *,int ) ;
 int bus_setup_intr (int ,struct resource*,int ,int *,int *,struct ata_kauai_softc*,void**) ;
 int bus_write_4 (int *,int ,int) ;
 struct ata_kauai_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int pci_enable_busmaster (int ) ;

__attribute__((used)) static int
ata_kauai_attach(device_t dev)
{
 struct ata_kauai_softc *sc = device_get_softc(dev);
 struct ata_channel *ch;
 int i, rid;






 ch = &sc->sc_ch.sc_ch;

        rid = PCIR_BARS;
 sc->sc_memr = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
        if (sc->sc_memr == ((void*)0)) {
                device_printf(dev, "could not allocate memory\n");
                return (ENXIO);
        }




        for (i = ATA_DATA; i <= ATA_COMMAND; i++) {
                ch->r_io[i].res = sc->sc_memr;
                ch->r_io[i].offset = i*ATA_KAUAI_REGGAP + ATA_KAUAI_REGOFFSET;
        }
        ch->r_io[ATA_CONTROL].res = sc->sc_memr;
        ch->r_io[ATA_CONTROL].offset = ATA_KAUAI_ALTOFFSET;
 ata_default_registers(dev);

 ch->unit = 0;
 ch->flags |= ATA_USE_16BIT;


 ch->flags |= ATA_NO_ATAPI_DMA;
 ata_generic_hw(dev);

 pci_enable_busmaster(dev);



 sc->sc_ch.dbdma_rid = 1;
 sc->sc_ch.dbdma_regs = sc->sc_memr;
 sc->sc_ch.dbdma_offset = ATA_KAUAI_DBDMAOFFSET;

 ata_dbdma_dmainit(dev);
 sc->pioconf[0] = sc->pioconf[1] =
     bus_read_4(sc->sc_memr, PIO_CONFIG_REG) & 0x0f000fff;

 sc->udmaconf[0] = sc->udmaconf[1] = 0;
 sc->wdmaconf[0] = sc->wdmaconf[1] = 0;


 bus_write_4(sc->sc_memr, 0, 0x00000007);


 sc->sc_ch.sc_ch.hw.begin_transaction = ata_kauai_begin_transaction;

 return ata_attach(dev);
}
