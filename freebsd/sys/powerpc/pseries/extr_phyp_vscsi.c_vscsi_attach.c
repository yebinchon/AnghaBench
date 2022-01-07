
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsi_xfer {int dmamap; struct vscsi_softc* sc; } ;
struct vscsi_softc {int max_transactions; int io_lock; int * devq; int * sim; int free_xferq; int data_tag; struct vscsi_xfer* xfer; int crq_queue; int crq_map; int crq_tag; scalar_t__ n_crqs; scalar_t__ crq_phys; struct vscsi_xfer loginxp; int active_xferq; int irq_cookie; int irq; scalar_t__ irqid; int unit; int dev; } ;
typedef int device_t ;


 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int FALSE ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int M_VSCSI ;
 int OF_getencprop (int ,char*,int *,int) ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vscsi_xfer*,int ) ;
 int bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int,int ,int *,int *,int *) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int ,int,int ,struct vscsi_softc*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct vscsi_softc*,int *) ;
 int * busdma_lock_mutex ;
 int * cam_sim_alloc (int ,int ,char*,struct vscsi_softc*,int ,int *,int,int,int *) ;
 int cam_sim_free (int *,int ) ;
 int * cam_simq_alloc (int) ;
 int cam_simq_free (int *) ;
 struct vscsi_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 struct vscsi_xfer* malloc (int,int ,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ofw_bus_get_node (int ) ;
 int queue ;
 int vscsi_cam_action ;
 int vscsi_cam_poll ;
 int vscsi_crq_load_cb ;
 int vscsi_intr ;
 int vscsi_setup_bus (struct vscsi_softc*) ;
 scalar_t__ xpt_bus_register (int *,int ,int ) ;

__attribute__((used)) static int
vscsi_attach(device_t dev)
{
 struct vscsi_softc *sc;
 struct vscsi_xfer *xp;
 int error, i;

 sc = device_get_softc(dev);
 if (sc == ((void*)0))
  return (EINVAL);

 sc->dev = dev;
 mtx_init(&sc->io_lock, "vscsi", ((void*)0), MTX_DEF);


 OF_getencprop(ofw_bus_get_node(dev), "reg", &sc->unit,
     sizeof(sc->unit));


 sc->irqid = 0;
 sc->irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irqid,
     RF_ACTIVE);

 if (!sc->irq) {
  device_printf(dev, "Could not allocate IRQ\n");
  mtx_destroy(&sc->io_lock);
  return (ENXIO);
 }

 bus_setup_intr(dev, sc->irq, INTR_TYPE_CAM | INTR_MPSAFE |
     INTR_ENTROPY, ((void*)0), vscsi_intr, sc, &sc->irq_cookie);


 error = bus_dma_tag_create(bus_get_dma_tag(dev), 1, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), BUS_SPACE_MAXSIZE,
     256, BUS_SPACE_MAXSIZE_32BIT, 0, busdma_lock_mutex, &sc->io_lock,
     &sc->data_tag);

 TAILQ_INIT(&sc->active_xferq);
 TAILQ_INIT(&sc->free_xferq);


 sc->loginxp.sc = sc;
 bus_dmamap_create(sc->data_tag, 0, &sc->loginxp.dmamap);
 TAILQ_INSERT_TAIL(&sc->free_xferq, &sc->loginxp, queue);


 error = bus_dma_tag_create(bus_get_dma_tag(dev), PAGE_SIZE, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), 8*PAGE_SIZE,
     1, BUS_SPACE_MAXSIZE, 0, ((void*)0), ((void*)0), &sc->crq_tag);
 error = bus_dmamem_alloc(sc->crq_tag, (void **)&sc->crq_queue,
     BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->crq_map);
 sc->crq_phys = 0;
 sc->n_crqs = 0;
 error = bus_dmamap_load(sc->crq_tag, sc->crq_map, sc->crq_queue,
     8*PAGE_SIZE, vscsi_crq_load_cb, sc, 0);

 mtx_lock(&sc->io_lock);
 vscsi_setup_bus(sc);
 sc->xfer = malloc(sizeof(sc->xfer[0])*sc->max_transactions, M_VSCSI,
     M_NOWAIT);
 for (i = 0; i < sc->max_transactions; i++) {
  xp = &sc->xfer[i];
  xp->sc = sc;

  error = bus_dmamap_create(sc->data_tag, 0, &xp->dmamap);
  if (error) {
   device_printf(dev, "Could not create DMA map (%d)\n",
       error);
   break;
  }

  TAILQ_INSERT_TAIL(&sc->free_xferq, xp, queue);
 }
 mtx_unlock(&sc->io_lock);


 if ((sc->devq = cam_simq_alloc(sc->max_transactions)) == ((void*)0))
  return (ENOMEM);

 sc->sim = cam_sim_alloc(vscsi_cam_action, vscsi_cam_poll, "vscsi", sc,
    device_get_unit(dev), &sc->io_lock,
    sc->max_transactions, sc->max_transactions,
    sc->devq);
 if (sc->sim == ((void*)0)) {
  cam_simq_free(sc->devq);
  sc->devq = ((void*)0);
  device_printf(dev, "CAM SIM attach failed\n");
  return (EINVAL);
 }


 mtx_lock(&sc->io_lock);
 if (xpt_bus_register(sc->sim, dev, 0) != 0) {
  device_printf(dev, "XPT bus registration failed\n");
  cam_sim_free(sc->sim, FALSE);
  sc->sim = ((void*)0);
  cam_simq_free(sc->devq);
  sc->devq = ((void*)0);
  mtx_unlock(&sc->io_lock);
  return (EINVAL);
 }
 mtx_unlock(&sc->io_lock);

 return (0);
}
