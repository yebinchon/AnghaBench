
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid3_softc {int sc_flags; int sc_ndisks; int sc_lock; } ;
struct g_provider {int acr; int acw; int ace; int name; TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_raid3_softc* softc; } ;


 int ENXIO ;
 int G_RAID3_DEBUG (int,char*,int ,int,int,int) ;
 int G_RAID3_DEVICE_FLAG_DESTROY ;
 int G_RAID3_DEVICE_FLAG_DESTROYING ;
 int G_RAID3_DISK_STATE_ACTIVE ;
 int KASSERT (int ,char*) ;
 int M_WAITOK ;
 int g_post_event (int ,struct g_raid3_softc*,int ,struct g_raid3_softc*,int *) ;
 int g_raid3_destroy_delayed ;
 int g_raid3_idle (struct g_raid3_softc*,int) ;
 int g_raid3_ndisks (struct g_raid3_softc*,int ) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
g_raid3_access(struct g_provider *pp, int acr, int acw, int ace)
{
 struct g_raid3_softc *sc;
 int dcr, dcw, dce, error = 0;

 g_topology_assert();
 G_RAID3_DEBUG(2, "Access request for %s: r%dw%de%d.", pp->name, acr,
     acw, ace);

 sc = pp->geom->softc;
 if (sc == ((void*)0) && acr <= 0 && acw <= 0 && ace <= 0)
  return (0);
 KASSERT(sc != ((void*)0), ("NULL softc (provider=%s).", pp->name));

 dcr = pp->acr + acr;
 dcw = pp->acw + acw;
 dce = pp->ace + ace;

 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROY) != 0 ||
     g_raid3_ndisks(sc, G_RAID3_DISK_STATE_ACTIVE) < sc->sc_ndisks - 1) {
  if (acr > 0 || acw > 0 || ace > 0)
   error = ENXIO;
  goto end;
 }
 if (dcw == 0)
  g_raid3_idle(sc, dcw);
 if ((sc->sc_flags & G_RAID3_DEVICE_FLAG_DESTROYING) != 0) {
  if (acr > 0 || acw > 0 || ace > 0) {
   error = ENXIO;
   goto end;
  }
  if (dcr == 0 && dcw == 0 && dce == 0) {
   g_post_event(g_raid3_destroy_delayed, sc, M_WAITOK,
       sc, ((void*)0));
  }
 }
end:
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 return (error);
}
