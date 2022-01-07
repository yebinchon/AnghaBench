
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itwd_softc {scalar_t__ intr_res; int intr_rid; scalar_t__ intr_handle; int * wd_ev; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct itwd_softc* device_get_softc (int ) ;
 int watchdog_list ;
 int wd_func (int ,int ,int*) ;

__attribute__((used)) static int
itwd_detach(device_t dev)
{
 struct itwd_softc *sc = device_get_softc(dev);
 int dummy;

 if (sc->wd_ev != ((void*)0))
  EVENTHANDLER_DEREGISTER(watchdog_list, sc->wd_ev);
 wd_func(dev, 0, &dummy);
 if (sc->intr_handle)
  bus_teardown_intr(dev, sc->intr_res, sc->intr_handle);
 if (sc->intr_res)
  bus_release_resource(dev, SYS_RES_IRQ, sc->intr_rid,
      sc->intr_res);
 return (0);
}
