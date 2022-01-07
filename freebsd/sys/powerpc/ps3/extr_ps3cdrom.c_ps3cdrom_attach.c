
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ps3cdrom_xfer {int x_dmamap; struct ps3cdrom_softc* x_sc; } ;
struct ps3cdrom_softc {int sc_irq; scalar_t__ sc_irqid; int sc_irqctx; int sc_dmatag; int sc_free_xferq; scalar_t__ sc_sim; int sc_path; int sc_mtx; struct ps3cdrom_xfer* sc_xfer; int sc_active_xferq; int sc_dev; } ;
struct TYPE_2__ {int func_code; } ;
struct ccb_setasync {scalar_t__ callback_arg; int callback; int event_enable; TYPE_1__ ccb_h; } ;
struct cam_devq {int dummy; } ;
typedef int device_t ;


 int AC_LOST_DEVICE ;
 int BUS_DMA_COHERENT ;
 int BUS_PROBE_SPECIFIC ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_UNRESTRICTED ;
 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_LUN_WILDCARD ;
 int CAM_REQ_CMP ;
 int CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int PAGE_SIZE ;
 int PS3CDROM_LOCK (struct ps3cdrom_softc*) ;
 int PS3CDROM_LOCK_DESTROY (struct ps3cdrom_softc*) ;
 int PS3CDROM_LOCK_INIT (struct ps3cdrom_softc*) ;
 int PS3CDROM_MAX_XFERS ;
 int PS3CDROM_UNLOCK (struct ps3cdrom_softc*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 struct ps3cdrom_xfer* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct ps3cdrom_xfer*,int ) ;
 int TAILQ_REMOVE (int *,struct ps3cdrom_xfer*,int ) ;
 int TRUE ;
 int XPT_SASYNC_CB ;
 int bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,int *) ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,scalar_t__,int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct ps3cdrom_softc*,int *) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int busdma_lock_mutex ;
 scalar_t__ cam_sim_alloc (int ,int ,char*,struct ps3cdrom_softc*,int ,int *,int,int ,struct cam_devq*) ;
 int cam_sim_free (scalar_t__,int ) ;
 int cam_sim_path (scalar_t__) ;
 struct cam_devq* cam_simq_alloc (int) ;
 int cam_simq_free (struct cam_devq*) ;
 struct ps3cdrom_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ps3cdrom_action ;
 int ps3cdrom_async ;
 int ps3cdrom_intr ;
 int ps3cdrom_poll ;
 int x_queue ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 int xpt_bus_register (scalar_t__,int ,int ) ;
 int xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_setup_ccb (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
ps3cdrom_attach(device_t dev)
{
 struct ps3cdrom_softc *sc = device_get_softc(dev);
 struct cam_devq *devq;
 struct ps3cdrom_xfer *xp;
 struct ccb_setasync csa;
 int i, err;

 sc->sc_dev = dev;

 PS3CDROM_LOCK_INIT(sc);



 sc->sc_irqid = 0;
 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->sc_irqid,
     RF_ACTIVE);
 if (!sc->sc_irq) {
  device_printf(dev, "Could not allocate IRQ\n");
  err = ENXIO;
  goto fail_destroy_lock;
 }

 err = bus_setup_intr(dev, sc->sc_irq,
     INTR_TYPE_CAM | INTR_MPSAFE | INTR_ENTROPY,
     ((void*)0), ps3cdrom_intr, sc, &sc->sc_irqctx);
 if (err) {
  device_printf(dev, "Could not setup IRQ\n");
  err = ENXIO;
  goto fail_release_intr;
 }



 err = bus_dma_tag_create(bus_get_dma_tag(dev), 4096, 0,
     BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
     BUS_SPACE_UNRESTRICTED, 1, PAGE_SIZE, 0,
     busdma_lock_mutex, &sc->sc_mtx, &sc->sc_dmatag);
 if (err) {
  device_printf(dev, "Could not create DMA tag\n");
  err = ENXIO;
  goto fail_teardown_intr;
 }



 TAILQ_INIT(&sc->sc_active_xferq);
 TAILQ_INIT(&sc->sc_free_xferq);

 for (i = 0; i < PS3CDROM_MAX_XFERS; i++) {
  xp = &sc->sc_xfer[i];
  xp->x_sc = sc;

  err = bus_dmamap_create(sc->sc_dmatag, BUS_DMA_COHERENT,
      &xp->x_dmamap);
  if (err) {
   device_printf(dev, "Could not create DMA map (%d)\n",
       err);
   goto fail_destroy_dmamap;
  }

  TAILQ_INSERT_TAIL(&sc->sc_free_xferq, xp, x_queue);
 }



 devq = cam_simq_alloc(PS3CDROM_MAX_XFERS - 1);
 if (!devq) {
  device_printf(dev, "Could not allocate SIM queue\n");
  err = ENOMEM;
  goto fail_destroy_dmatag;
 }

 sc->sc_sim = cam_sim_alloc(ps3cdrom_action, ps3cdrom_poll, "ps3cdrom",
     sc, device_get_unit(dev), &sc->sc_mtx, PS3CDROM_MAX_XFERS - 1, 0,
     devq);
 if (!sc->sc_sim) {
  device_printf(dev, "Could not allocate SIM\n");
  cam_simq_free(devq);
  err = ENOMEM;
  goto fail_destroy_dmatag;
 }



 PS3CDROM_LOCK(sc);

 err = xpt_bus_register(sc->sc_sim, dev, 0);
 if (err != CAM_SUCCESS) {
  device_printf(dev, "Could not register XPT bus\n");
  err = ENXIO;
  PS3CDROM_UNLOCK(sc);
  goto fail_free_sim;
 }

 err = xpt_create_path(&sc->sc_path, ((void*)0), cam_sim_path(sc->sc_sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD);
 if (err != CAM_REQ_CMP) {
  device_printf(dev, "Could not create XPT path\n");
  err = ENOMEM;
  PS3CDROM_UNLOCK(sc);
  goto fail_unregister_xpt_bus;
 }

 xpt_setup_ccb(&csa.ccb_h, sc->sc_path, 5);
 csa.ccb_h.func_code = XPT_SASYNC_CB;
 csa.event_enable = AC_LOST_DEVICE;
 csa.callback = ps3cdrom_async;
 csa.callback_arg = sc->sc_sim;
 xpt_action((union ccb *) &csa);

 CAM_DEBUG(sc->sc_path, CAM_DEBUG_TRACE,
     ("registered SIM for ps3cdrom%d\n", device_get_unit(dev)));

 PS3CDROM_UNLOCK(sc);

 return (BUS_PROBE_SPECIFIC);

fail_unregister_xpt_bus:

 xpt_bus_deregister(cam_sim_path(sc->sc_sim));

fail_free_sim:

 cam_sim_free(sc->sc_sim, TRUE);

fail_destroy_dmamap:

 while ((xp = TAILQ_FIRST(&sc->sc_free_xferq))) {
  TAILQ_REMOVE(&sc->sc_free_xferq, xp, x_queue);
  bus_dmamap_destroy(sc->sc_dmatag, xp->x_dmamap);
 }

fail_destroy_dmatag:

 bus_dma_tag_destroy(sc->sc_dmatag);

fail_teardown_intr:

 bus_teardown_intr(dev, sc->sc_irq, sc->sc_irqctx);

fail_release_intr:

 bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);

fail_destroy_lock:

 PS3CDROM_LOCK_DESTROY(sc);

 return (err);
}
