
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_volume {scalar_t__ v_provider_open; scalar_t__ v_stopping; scalar_t__ v_read_only; } ;
struct g_raid_softc {scalar_t__ sc_stopping; int sc_lock; } ;
struct g_provider {int acw; int name; struct g_raid_volume* private; TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_raid_softc* softc; } ;


 int ENXIO ;
 int EROFS ;
 int G_RAID_DEBUG1 (int,struct g_raid_softc*,char*,int ,int,int,int) ;
 scalar_t__ G_RAID_DESTROY_DELAYED ;
 scalar_t__ G_RAID_DESTROY_HARD ;
 int G_RAID_NODE_E_WAKE ;
 int KASSERT (int ,char*) ;
 int g_raid_clean (struct g_raid_volume*,int) ;
 int g_raid_destroy_volume (struct g_raid_volume*) ;
 int g_raid_event_send (struct g_raid_softc*,int ,int ) ;
 int g_raid_nopens (struct g_raid_softc*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
g_raid_access(struct g_provider *pp, int acr, int acw, int ace)
{
 struct g_raid_volume *vol;
 struct g_raid_softc *sc;
 int dcw, opens, error = 0;

 g_topology_assert();
 sc = pp->geom->softc;
 vol = pp->private;
 KASSERT(sc != ((void*)0), ("NULL softc (provider=%s).", pp->name));
 KASSERT(vol != ((void*)0), ("NULL volume (provider=%s).", pp->name));

 G_RAID_DEBUG1(2, sc, "Access request for %s: r%dw%de%d.", pp->name,
     acr, acw, ace);
 dcw = pp->acw + acw;

 g_topology_unlock();
 sx_xlock(&sc->sc_lock);

 if (sc->sc_stopping != 0 && (acr > 0 || acw > 0 || ace > 0)) {
  error = ENXIO;
  goto out;
 }

 if (vol->v_read_only && acw > 0) {
  error = EROFS;
  goto out;
 }
 if (dcw == 0)
  g_raid_clean(vol, dcw);
 vol->v_provider_open += acr + acw + ace;

 if (sc->sc_stopping == G_RAID_DESTROY_DELAYED &&
     vol->v_provider_open == 0) {

  opens = g_raid_nopens(sc);
  if (opens == 0) {
   sc->sc_stopping = G_RAID_DESTROY_HARD;

   g_raid_event_send(sc, G_RAID_NODE_E_WAKE, 0);
  }
 }

 if (vol->v_stopping && vol->v_provider_open == 0)
  g_raid_destroy_volume(vol);
out:
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 return (error);
}
