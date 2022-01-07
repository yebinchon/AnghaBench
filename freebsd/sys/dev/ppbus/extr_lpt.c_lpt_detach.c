
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpt_data {int sc_statbuf; int sc_inbuf; int * sc_intr_resource; int sc_intr_cookie; int sc_timer; int sc_cdev_bypass; int sc_cdev; } ;
typedef int device_t ;


 struct lpt_data* DEVTOSOFTC (int ) ;
 int M_DEVBUF ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int callout_drain (int *) ;
 int destroy_dev (int ) ;
 int device_get_parent (int ) ;
 int free (int ,int ) ;
 int lpt_release_ppbus (int ) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;

__attribute__((used)) static int
lpt_detach(device_t dev)
{
 struct lpt_data *sc = DEVTOSOFTC(dev);
 device_t ppbus = device_get_parent(dev);

 destroy_dev(sc->sc_cdev);
 destroy_dev(sc->sc_cdev_bypass);
 ppb_lock(ppbus);
 lpt_release_ppbus(dev);
 ppb_unlock(ppbus);
 callout_drain(&sc->sc_timer);
 if (sc->sc_intr_resource != ((void*)0)) {
  bus_teardown_intr(dev, sc->sc_intr_resource,
      sc->sc_intr_cookie);
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_intr_resource);
 }
 free(sc->sc_inbuf, M_DEVBUF);
 free(sc->sc_statbuf, M_DEVBUF);

 return (0);
}
