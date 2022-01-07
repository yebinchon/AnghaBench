
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int bufsize; int rbuf; int pbuf; int dev; int rmap; int dmat; int pmap; int ih; void* irq; scalar_t__ irqid; void* cs; int csh; int cst; scalar_t__ csid; } ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int ENXIO ;
 int Giant ;
 int HDSPE_DMASEGSIZE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_AV ;
 scalar_t__ PCIR_BAR (int ) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int ,int *,int *) ;
 scalar_t__ bus_dmamap_load (int ,int ,int ,int,int ,struct sc_info*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int bus_get_dma_tag (int ) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct sc_info*,int *) ;
 int busdma_lock_mutex ;
 int bzero (int ,int) ;
 int device_printf (int ,char*) ;
 int hdspe_dmapsetmap ;
 int hdspe_intr ;
 int rman_get_bushandle (void*) ;
 int rman_get_bustag (void*) ;

__attribute__((used)) static int
hdspe_alloc_resources(struct sc_info *sc)
{


 sc->csid = PCIR_BAR(0);
 sc->cs = bus_alloc_resource_any(sc->dev, SYS_RES_MEMORY,
     &sc->csid, RF_ACTIVE);

 if (!sc->cs) {
  device_printf(sc->dev, "Unable to map SYS_RES_MEMORY.\n");
  return (ENXIO);
 }

 sc->cst = rman_get_bustag(sc->cs);
 sc->csh = rman_get_bushandle(sc->cs);


 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(sc->dev, SYS_RES_IRQ, &sc->irqid,
     RF_ACTIVE | RF_SHAREABLE);

 if (!sc->irq ||
     bus_setup_intr(sc->dev, sc->irq, INTR_MPSAFE | INTR_TYPE_AV,
  ((void*)0), hdspe_intr, sc, &sc->ih)) {
  device_printf(sc->dev, "Unable to alloc interrupt resource.\n");
  return (ENXIO);
 }


 if (bus_dma_tag_create( bus_get_dma_tag(sc->dev),
               4,
              0,
             BUS_SPACE_MAXADDR_32BIT,
              BUS_SPACE_MAXADDR,
            ((void*)0),
               ((void*)0),
             2 * HDSPE_DMASEGSIZE,
               2,
              HDSPE_DMASEGSIZE,
           0,
              busdma_lock_mutex,
             &Giant,
            &sc->dmat) != 0) {
  device_printf(sc->dev, "Unable to create dma tag.\n");
  return (ENXIO);
 }

 sc->bufsize = HDSPE_DMASEGSIZE;


 if (bus_dmamem_alloc(sc->dmat, (void **)&sc->pbuf,
  BUS_DMA_NOWAIT, &sc->pmap)) {
  device_printf(sc->dev, "Can't alloc pbuf.\n");
  return (ENXIO);
 }

 if (bus_dmamap_load(sc->dmat, sc->pmap, sc->pbuf, sc->bufsize,
  hdspe_dmapsetmap, sc, 0)) {
  device_printf(sc->dev, "Can't load pbuf.\n");
  return (ENXIO);
 }


 if (bus_dmamem_alloc(sc->dmat, (void **)&sc->rbuf,
  BUS_DMA_NOWAIT, &sc->rmap)) {
  device_printf(sc->dev, "Can't alloc rbuf.\n");
  return (ENXIO);
 }

 if (bus_dmamap_load(sc->dmat, sc->rmap, sc->rbuf, sc->bufsize,
  hdspe_dmapsetmap, sc, 0)) {
  device_printf(sc->dev, "Can't load rbuf.\n");
  return (ENXIO);
 }

 bzero(sc->pbuf, sc->bufsize);
 bzero(sc->rbuf, sc->bufsize);

 return (0);
}
