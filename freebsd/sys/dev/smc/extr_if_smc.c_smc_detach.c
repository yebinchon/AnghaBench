
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smc_softc {int smc_mtx; int * smc_irq; int smc_irq_rid; int smc_dev; int * smc_reg; int smc_reg_rid; scalar_t__ smc_usemem; int * smc_miibus; TYPE_1__* smc_ifp; int * smc_tq; int smc_tx; int smc_rx; int smc_intr; int * smc_ih; int smc_mii_tick_ch; int smc_watchdog; } ;
typedef int device_t ;
struct TYPE_4__ {int if_capenable; } ;


 int IFCAP_POLLING ;
 int SMC_LOCK (struct smc_softc*) ;
 int SMC_UNLOCK (struct smc_softc*) ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,int *) ;
 struct smc_softc* device_get_softc (int ) ;
 int ether_ifdetach (TYPE_1__*) ;
 int ether_poll_deregister (TYPE_1__*) ;
 int if_free (TYPE_1__*) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int smc_stop (struct smc_softc*) ;
 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

int
smc_detach(device_t dev)
{
 int type;
 struct smc_softc *sc;

 sc = device_get_softc(dev);
 SMC_LOCK(sc);
 smc_stop(sc);
 SMC_UNLOCK(sc);

 if (sc->smc_ifp != ((void*)0)) {
  ether_ifdetach(sc->smc_ifp);
 }

 callout_drain(&sc->smc_watchdog);
 callout_drain(&sc->smc_mii_tick_ch);






 if (sc->smc_ih != ((void*)0))
  bus_teardown_intr(sc->smc_dev, sc->smc_irq, sc->smc_ih);

 if (sc->smc_tq != ((void*)0)) {
  taskqueue_drain(sc->smc_tq, &sc->smc_intr);
  taskqueue_drain(sc->smc_tq, &sc->smc_rx);
  taskqueue_drain(sc->smc_tq, &sc->smc_tx);
  taskqueue_free(sc->smc_tq);
  sc->smc_tq = ((void*)0);
 }

 if (sc->smc_ifp != ((void*)0)) {
  if_free(sc->smc_ifp);
 }

 if (sc->smc_miibus != ((void*)0)) {
  device_delete_child(sc->smc_dev, sc->smc_miibus);
  bus_generic_detach(sc->smc_dev);
 }

 if (sc->smc_reg != ((void*)0)) {
  type = SYS_RES_IOPORT;
  if (sc->smc_usemem)
   type = SYS_RES_MEMORY;

  bus_release_resource(sc->smc_dev, type, sc->smc_reg_rid,
      sc->smc_reg);
 }

 if (sc->smc_irq != ((void*)0))
  bus_release_resource(sc->smc_dev, SYS_RES_IRQ, sc->smc_irq_rid,
     sc->smc_irq);

 if (mtx_initialized(&sc->smc_mtx))
  mtx_destroy(&sc->smc_mtx);

 return (0);
}
