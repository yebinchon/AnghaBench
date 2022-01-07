
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dev; int dmat; int ih; void* irq; scalar_t__ irqid; void* mt; void* mth; void* mtt; void* cs; void* csh; void* cst; scalar_t__ mtid; scalar_t__ csid; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_ENVY24 ;
 scalar_t__ ENVY24HT_PCIR_MT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 scalar_t__ PCIR_CCS ;
 scalar_t__ PCIR_MT ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int *,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int device_printf (int ,char*,...) ;
 int envy24ht_intr ;
 int pci_read_config (int ,scalar_t__,int) ;
 void* rman_get_bushandle (void*) ;
 void* rman_get_bustag (void*) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct sc_info*,int *) ;

__attribute__((used)) static int
envy24ht_alloc_resource(struct sc_info *sc)
{

 sc->csid = PCIR_CCS;
 sc->cs = bus_alloc_resource_any(sc->dev, SYS_RES_IOPORT,
     &sc->csid, RF_ACTIVE);
 sc->mtid = ENVY24HT_PCIR_MT;
 sc->mt = bus_alloc_resource_any(sc->dev, SYS_RES_IOPORT,
     &sc->mtid, RF_ACTIVE);
 if (!sc->cs || !sc->mt) {
  device_printf(sc->dev, "unable to map IO port space\n");
  return ENXIO;
 }
 sc->cst = rman_get_bustag(sc->cs);
 sc->csh = rman_get_bushandle(sc->cs);
 sc->mtt = rman_get_bustag(sc->mt);
 sc->mth = rman_get_bushandle(sc->mt);
 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &sc->irqid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq ||
     snd_setup_intr(sc->dev, sc->irq, INTR_MPSAFE, envy24ht_intr, sc, &sc->ih)) {
  device_printf(sc->dev, "unable to map interrupt\n");
  return ENXIO;
 }


 if (bus_dma_tag_create( bus_get_dma_tag(sc->dev),
                  4,
                 0,
                BUS_SPACE_MAXADDR_32BIT,
                 BUS_SPACE_MAXADDR,
               ((void*)0), ((void*)0),
                BUS_SPACE_MAXSIZE_ENVY24,
                  1, 0x3ffff,
              0, ((void*)0),
                ((void*)0), &sc->dmat) != 0) {
  device_printf(sc->dev, "unable to create dma tag\n");
  return ENXIO;
 }

 return 0;
}
