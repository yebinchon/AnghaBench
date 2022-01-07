
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lp_data {int res_irq; int sc_intr_cookie; int sc_ifp; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int bpfdetach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int bus_teardown_intr (int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct lp_data* device_get_softc (int ) ;
 int if_detach (int ) ;
 int lpstop (struct lp_data*) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lp_detach(device_t dev)
{
 struct lp_data *sc = device_get_softc(dev);
 device_t ppbus = device_get_parent(dev);

 ppb_lock(ppbus);
 lpstop(sc);
 ppb_unlock(ppbus);
 bpfdetach(sc->sc_ifp);
 if_detach(sc->sc_ifp);
 bus_teardown_intr(dev, sc->res_irq, sc->sc_intr_cookie);
 bus_release_resource(dev, SYS_RES_IRQ, 0, sc->res_irq);
 return (0);
}
