
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_softc {scalar_t__ ev_tag; } ;
typedef int device_t ;


 int EVENTHANDLER_DEREGISTER (int ,scalar_t__) ;
 struct wb_softc* device_get_softc (int ) ;
 int watchdog_list ;
 int wb_set_watchdog (struct wb_softc*,int ) ;

__attribute__((used)) static int
wb_detach(device_t dev)
{
 struct wb_softc *sc;

 sc = device_get_softc(dev);


 if (sc->ev_tag)
  EVENTHANDLER_DEREGISTER(watchdog_list, sc->ev_tag);
 wb_set_watchdog(sc, 0);



 return (0);
}
