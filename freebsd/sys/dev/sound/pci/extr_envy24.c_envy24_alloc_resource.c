
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dev; int dmat; int ih; void* irq; void* irqid; void* mt; void* mth; void* mtt; void* ds; void* dsh; void* dst; void* ddma; void* ddmah; void* ddmat; void* cs; void* csh; void* cst; void* mtid; void* dsid; void* ddmaid; void* csid; } ;


 int BUS_SPACE_MAXADDR_ENVY24 ;
 int BUS_SPACE_MAXSIZE_ENVY24 ;
 int ENXIO ;
 int Giant ;
 int INTR_MPSAFE ;
 void* PCIR_CCS ;
 void* PCIR_DDMA ;
 void* PCIR_DS ;
 void* PCIR_MT ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,void**,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;
 int device_printf (int ,char*,...) ;
 int envy24_intr ;
 int pci_read_config (int ,void*,int) ;
 void* rman_get_bushandle (void*) ;
 void* rman_get_bustag (void*) ;
 scalar_t__ snd_setup_intr (int ,void*,int ,int ,struct sc_info*,int *) ;

__attribute__((used)) static int
envy24_alloc_resource(struct sc_info *sc)
{

 sc->csid = PCIR_CCS;
 sc->cs = bus_alloc_resource_any(sc->dev, SYS_RES_IOPORT,
     &sc->csid, RF_ACTIVE);
 sc->ddmaid = PCIR_DDMA;
 sc->ddma = bus_alloc_resource_any(sc->dev, SYS_RES_IOPORT,
     &sc->ddmaid, RF_ACTIVE);
 sc->dsid = PCIR_DS;
 sc->ds = bus_alloc_resource_any(sc->dev, SYS_RES_IOPORT,
     &sc->dsid, RF_ACTIVE);
 sc->mtid = PCIR_MT;
 sc->mt = bus_alloc_resource_any(sc->dev, SYS_RES_IOPORT,
     &sc->mtid, RF_ACTIVE);
 if (!sc->cs || !sc->ddma || !sc->ds || !sc->mt) {
  device_printf(sc->dev, "unable to map IO port space\n");
  return ENXIO;
 }
 sc->cst = rman_get_bustag(sc->cs);
 sc->csh = rman_get_bushandle(sc->cs);
 sc->ddmat = rman_get_bustag(sc->ddma);
 sc->ddmah = rman_get_bushandle(sc->ddma);
 sc->dst = rman_get_bustag(sc->ds);
 sc->dsh = rman_get_bushandle(sc->ds);
 sc->mtt = rman_get_bustag(sc->mt);
 sc->mth = rman_get_bushandle(sc->mt);
 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &sc->irqid,
     RF_ACTIVE | RF_SHAREABLE);
 if (!sc->irq ||
     snd_setup_intr(sc->dev, sc->irq, INTR_MPSAFE, envy24_intr, sc, &sc->ih)) {
  device_printf(sc->dev, "unable to map interrupt\n");
  return ENXIO;
 }


 if (bus_dma_tag_create( bus_get_dma_tag(sc->dev),
                  4,
                 0,
                BUS_SPACE_MAXADDR_ENVY24,
                 BUS_SPACE_MAXADDR_ENVY24,
               ((void*)0), ((void*)0),
                BUS_SPACE_MAXSIZE_ENVY24,
                  1, 0x3ffff,
              0, busdma_lock_mutex,
                &Giant, &sc->dmat) != 0) {
  device_printf(sc->dev, "unable to create dma tag\n");
  return ENXIO;
 }

 return 0;
}
