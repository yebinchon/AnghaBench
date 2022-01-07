
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_softc {struct g_geom* sc_geom; int sc_lock; int sc_queue_mtx; int sc_worker; int sc_queue; int sc_events; int sc_disks; int sc_volumes; scalar_t__ sc_flags; struct g_raid_md_object* sc_md; } ;
struct g_raid_md_object {int dummy; } ;
struct g_geom {struct g_raid_softc* softc; int dumpconf; int access; int orphan; int start; } ;
struct g_class {int dummy; } ;


 int G_RAID_DEBUG (int,char*,char const*) ;
 int G_RAID_DEBUG1 (int ,struct g_raid_softc*,char*,char const*) ;
 int MTX_DEF ;
 int M_RAID ;
 int M_WAITOK ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int bioq_init (int *) ;
 int free (struct g_raid_softc*,int ) ;
 int g_destroy_geom (struct g_geom*) ;
 struct g_geom* g_new_geomf (struct g_class*,char*,char const*) ;
 int g_raid_access ;
 int g_raid_dumpconf ;
 int g_raid_orphan ;
 int g_raid_start ;
 int g_raid_worker ;
 int g_topology_assert () ;
 int kproc_create (int ,struct g_raid_softc*,int *,int ,int ,char*,char const*) ;
 struct g_raid_softc* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;

struct g_raid_softc *
g_raid_create_node(struct g_class *mp,
    const char *name, struct g_raid_md_object *md)
{
 struct g_raid_softc *sc;
 struct g_geom *gp;
 int error;

 g_topology_assert();
 G_RAID_DEBUG(1, "Creating array %s.", name);

 gp = g_new_geomf(mp, "%s", name);
 sc = malloc(sizeof(*sc), M_RAID, M_WAITOK | M_ZERO);
 gp->start = g_raid_start;
 gp->orphan = g_raid_orphan;
 gp->access = g_raid_access;
 gp->dumpconf = g_raid_dumpconf;

 sc->sc_md = md;
 sc->sc_geom = gp;
 sc->sc_flags = 0;
 TAILQ_INIT(&sc->sc_volumes);
 TAILQ_INIT(&sc->sc_disks);
 sx_init(&sc->sc_lock, "graid:lock");
 mtx_init(&sc->sc_queue_mtx, "graid:queue", ((void*)0), MTX_DEF);
 TAILQ_INIT(&sc->sc_events);
 bioq_init(&sc->sc_queue);
 gp->softc = sc;
 error = kproc_create(g_raid_worker, sc, &sc->sc_worker, 0, 0,
     "g_raid %s", name);
 if (error != 0) {
  G_RAID_DEBUG(0, "Cannot create kernel thread for %s.", name);
  mtx_destroy(&sc->sc_queue_mtx);
  sx_destroy(&sc->sc_lock);
  g_destroy_geom(sc->sc_geom);
  free(sc, M_RAID);
  return (((void*)0));
 }

 G_RAID_DEBUG1(0, sc, "Array %s created.", name);
 return (sc);
}
