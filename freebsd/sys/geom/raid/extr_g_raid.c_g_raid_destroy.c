
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_softc {int sc_stopping; int sc_lock; } ;


 int EBUSY ;
 int ENXIO ;
 int EWOULDBLOCK ;
 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,...) ;



 int G_RAID_NODE_E_WAKE ;
 int PDROP ;
 int PRIBIO ;
 int SX_XLOCKED ;
 int g_raid_event_send (struct g_raid_softc*,int ,int ) ;
 int g_raid_nopens (struct g_raid_softc*) ;
 int g_topology_assert_not () ;
 int hz ;
 int sx_assert (int *,int ) ;
 int sx_sleep (int*,int *,int,char*,int) ;
 int sx_xunlock (int *) ;

int
g_raid_destroy(struct g_raid_softc *sc, int how)
{
 int error, opens;

 g_topology_assert_not();
 if (sc == ((void*)0))
  return (ENXIO);
 sx_assert(&sc->sc_lock, SX_XLOCKED);


 opens = g_raid_nopens(sc);


 if (opens > 0) {
  switch (how) {
  case 128:
   G_RAID_DEBUG1(1, sc,
       "%d volumes are still open.",
       opens);
   sx_xunlock(&sc->sc_lock);
   return (EBUSY);
  case 130:
   G_RAID_DEBUG1(1, sc,
       "Array will be destroyed on last close.");
   sc->sc_stopping = 130;
   sx_xunlock(&sc->sc_lock);
   return (EBUSY);
  case 129:
   G_RAID_DEBUG1(1, sc,
       "%d volumes are still open.",
       opens);
  }
 }


 sc->sc_stopping = 129;

 g_raid_event_send(sc, G_RAID_NODE_E_WAKE, 0);

 error = sx_sleep(&sc->sc_stopping, &sc->sc_lock,
     PRIBIO | PDROP, "r:destroy", hz * 3);
 return (error == EWOULDBLOCK ? EBUSY : 0);
}
