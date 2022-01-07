
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_softc {int sc_flags; int sc_lock; int sc_name; } ;


 int EV_CANCEL ;
 int G_RAID3_DEBUG (int,char*,...) ;
 int G_RAID3_DESTROY_SOFT ;
 int G_RAID3_DEVICE_FLAG_DESTROY ;
 int G_RAID3_DEVICE_FLAG_DESTROYING ;
 int KASSERT (int,char*) ;
 int g_raid3_destroy (struct g_raid3_softc*,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid3_destroy_delayed(void *arg, int flag)
{
 struct g_raid3_softc *sc;
 int error;

 if (flag == EV_CANCEL) {
  G_RAID3_DEBUG(1, "Destroying canceled.");
  return;
 }
 sc = arg;
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 KASSERT((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) == 0,
     ("DESTROY flag set on %s.", sc->sc_name));
 KASSERT((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROYING) != 0,
     ("DESTROYING flag not set on %s.", sc->sc_name));
 G_RAID3_DEBUG(0, "Destroying %s (delayed).", sc->sc_name);
 error = g_raid3_destroy(sc, G_RAID3_DESTROY_SOFT);
 if (error != 0) {
  G_RAID3_DEBUG(0, "Cannot destroy %s.", sc->sc_name);
  sx_xunlock(&sc->sc_lock);
 }
 g_topology_lock();
}
