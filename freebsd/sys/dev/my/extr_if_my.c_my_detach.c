
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int my_mtx; int my_res; int my_irq; int my_ldata_ptr; int my_autoneg_timer; int my_watchdog; int my_intrhand; struct ifnet* my_ifp; } ;
struct ifnet {int dummy; } ;
typedef int device_t ;


 int MY_LOCK (struct my_softc*) ;
 int MY_RES ;
 int MY_RID ;
 int MY_UNLOCK (struct my_softc*) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int callout_drain (int *) ;
 struct my_softc* device_get_softc (int ) ;
 int ether_ifdetach (struct ifnet*) ;
 int free (int ,int ) ;
 int if_free (struct ifnet*) ;
 int mtx_destroy (int *) ;
 int my_stop (struct my_softc*) ;

__attribute__((used)) static int
my_detach(device_t dev)
{
 struct my_softc *sc;
 struct ifnet *ifp;

 sc = device_get_softc(dev);
 ifp = sc->my_ifp;
 ether_ifdetach(ifp);
 MY_LOCK(sc);
 my_stop(sc);
 MY_UNLOCK(sc);
 bus_teardown_intr(dev, sc->my_irq, sc->my_intrhand);
 callout_drain(&sc->my_watchdog);
 callout_drain(&sc->my_autoneg_timer);

 if_free(ifp);
 free(sc->my_ldata_ptr, M_DEVBUF);

 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->my_irq);
 bus_release_resource(dev, MY_RES, MY_RID, sc->my_res);
 mtx_destroy(&sc->my_mtx);
 return (0);
}
