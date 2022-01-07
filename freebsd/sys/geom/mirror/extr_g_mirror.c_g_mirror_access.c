
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acw; int name; struct g_mirror_softc* private; } ;
struct g_mirror_softc {int sc_flags; scalar_t__ sc_provider_open; int sc_lock; int sc_disks; } ;


 int ENXIO ;
 int G_MIRROR_DEBUG (int,char*,int ,int,int,int) ;
 int G_MIRROR_DEVICE_FLAG_CLOSEWAIT ;
 int G_MIRROR_DEVICE_FLAG_DESTROY ;
 int KASSERT (int ,char*) ;
 scalar_t__ LIST_EMPTY (int *) ;
 int M_WAITOK ;
 int g_mirror_destroy_delayed ;
 int g_mirror_idle (struct g_mirror_softc*,int ) ;
 int g_post_event (int ,struct g_mirror_softc*,int ,struct g_mirror_softc*,int *) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
g_mirror_access(struct g_provider *pp, int acr, int acw, int ace)
{
 struct g_mirror_softc *sc;
 int error = 0;

 g_topology_assert();
 G_MIRROR_DEBUG(2, "Access request for %s: r%dw%de%d.", pp->name, acr,
     acw, ace);

 sc = pp->private;
 KASSERT(sc != ((void*)0), ("NULL softc (provider=%s).", pp->name));

 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_DESTROY) != 0 ||
     (sc->sc_flags & G_MIRROR_DEVICE_FLAG_CLOSEWAIT) != 0 ||
     LIST_EMPTY(&sc->sc_disks)) {
  if (acr > 0 || acw > 0 || ace > 0)
   error = ENXIO;
  goto end;
 }
 sc->sc_provider_open += acr + acw + ace;
 if (pp->acw + acw == 0)
  g_mirror_idle(sc, 0);
 if ((sc->sc_flags & G_MIRROR_DEVICE_FLAG_CLOSEWAIT) != 0 &&
     sc->sc_provider_open == 0)
  g_post_event(g_mirror_destroy_delayed, sc, M_WAITOK, sc, ((void*)0));
end:
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
 return (error);
}
