
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_softc {int suspended; int rl_mtx; scalar_t__ rl_res; int rl_res_id; int rl_res_type; scalar_t__* rl_irq; scalar_t__* rl_intrhand; scalar_t__ rl_miibus; int rl_stat_callout; struct ifnet* rl_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef int device_t ;


 int IFCAP_POLLING ;
 int KASSERT (int ,char*) ;
 int RL_LOCK (struct rl_softc*) ;
 int RL_UNLOCK (struct rl_softc*) ;
 int SYS_RES_IRQ ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 int callout_drain (int *) ;
 int device_delete_child (int ,scalar_t__) ;
 struct rl_softc* device_get_softc (int ) ;
 scalar_t__ device_is_attached (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int ether_poll_deregister (struct ifnet*) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int mtx_initialized (int *) ;
 int rl_dma_free (struct rl_softc*) ;
 int rl_stop (struct rl_softc*) ;

__attribute__((used)) static int
rl_detach(device_t dev)
{
 struct rl_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->rl_ifp;

 KASSERT(mtx_initialized(&sc->rl_mtx), ("rl mutex not initialized"));






 if (device_is_attached(dev)) {
  RL_LOCK(sc);
  rl_stop(sc);
  RL_UNLOCK(sc);
  callout_drain(&sc->rl_stat_callout);
  ether_ifdetach(ifp);
 }



 if (sc->rl_miibus)
  device_delete_child(dev, sc->rl_miibus);
 bus_generic_detach(dev);

 if (sc->rl_intrhand[0])
  bus_teardown_intr(dev, sc->rl_irq[0], sc->rl_intrhand[0]);
 if (sc->rl_irq[0])
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->rl_irq[0]);
 if (sc->rl_res)
  bus_release_resource(dev, sc->rl_res_type, sc->rl_res_id,
      sc->rl_res);

 if (ifp)
  if_free(ifp);

 rl_dma_free(sc);

 mtx_destroy(&sc->rl_mtx);

 return (0);
}
