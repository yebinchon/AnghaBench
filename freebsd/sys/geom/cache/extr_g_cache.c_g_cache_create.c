
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct g_provider {int sectorsize; int mediasize; int name; } ;
struct g_geom {int name; int dumpconf; int access; int orphan; int start; struct g_cache_softc* softc; } ;
struct g_consumer {int dummy; } ;
struct g_class {int dummy; } ;
struct g_cache_softc {int sc_type; int sc_bshift; int sc_bsize; int sc_maxent; int sc_callout; int sc_mtx; int sc_tail; struct g_geom* sc_geom; int sc_usedlist; int * sc_desclist; int sc_zone; } ;
struct g_cache_metadata {int md_size; int md_bsize; int md_name; } ;


 int BNO2OFF (int ,struct g_cache_softc*) ;
 int G_CACHE_BUCKETS ;
 int G_CACHE_DEBUG (int,char*,int ) ;
 int G_CACHE_TYPE_AUTOMATIC ;
 int LIST_INIT (int *) ;
 int MAXPHYS ;
 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OFF2BNO (int,struct g_cache_softc*) ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,struct g_cache_softc*) ;
 int ffs (int) ;
 scalar_t__ g_attach (struct g_consumer*,struct g_provider*) ;
 int g_cache_access ;
 int g_cache_dumpconf ;
 int * g_cache_find_device (struct g_class*,char const*) ;
 int g_cache_go ;
 int g_cache_orphan ;
 int g_cache_start ;
 int g_cache_timeout ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_destroy_geom (struct g_geom*) ;
 int g_destroy_provider (struct g_provider*) ;
 int g_error_provider (struct g_provider*,int ) ;
 int g_free (struct g_cache_softc*) ;
 struct g_cache_softc* g_malloc (int,int) ;
 struct g_consumer* g_new_consumer (struct g_geom*) ;
 struct g_geom* g_new_geomf (struct g_class*,char*,int ) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,int ) ;
 int g_topology_assert () ;
 int hz ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

__attribute__((used)) static struct g_geom *
g_cache_create(struct g_class *mp, struct g_provider *pp,
    const struct g_cache_metadata *md, u_int type)
{
 struct g_cache_softc *sc;
 struct g_geom *gp;
 struct g_provider *newpp;
 struct g_consumer *cp;
 u_int bshift;
 int i;

 g_topology_assert();

 gp = ((void*)0);
 newpp = ((void*)0);
 cp = ((void*)0);

 G_CACHE_DEBUG(1, "Creating device %s.", md->md_name);


 if (md->md_size < 100) {
  G_CACHE_DEBUG(0, "Invalid size for device %s.", md->md_name);
  return (((void*)0));
 }


 bshift = ffs(md->md_bsize) - 1;
 if (md->md_bsize == 0 || md->md_bsize > MAXPHYS ||
     md->md_bsize != 1 << bshift ||
     (md->md_bsize % pp->sectorsize) != 0) {
  G_CACHE_DEBUG(0, "Invalid blocksize for provider %s.", pp->name);
  return (((void*)0));
 }


 if (g_cache_find_device(mp, (const char *)&md->md_name) != ((void*)0)) {
  G_CACHE_DEBUG(0, "Provider %s already exists.", md->md_name);
  return (((void*)0));
 }

 gp = g_new_geomf(mp, "%s", md->md_name);
 sc = g_malloc(sizeof(*sc), M_WAITOK | M_ZERO);
 sc->sc_type = type;
 sc->sc_bshift = bshift;
 sc->sc_bsize = 1 << bshift;
 sc->sc_zone = uma_zcreate("gcache", sc->sc_bsize, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     UMA_ALIGN_PTR, 0);
 mtx_init(&sc->sc_mtx, "GEOM CACHE mutex", ((void*)0), MTX_DEF);
 for (i = 0; i < G_CACHE_BUCKETS; i++)
  LIST_INIT(&sc->sc_desclist[i]);
 TAILQ_INIT(&sc->sc_usedlist);
 sc->sc_maxent = md->md_size;
 callout_init_mtx(&sc->sc_callout, &sc->sc_mtx, 0);
 gp->softc = sc;
 sc->sc_geom = gp;
 gp->start = g_cache_start;
 gp->orphan = g_cache_orphan;
 gp->access = g_cache_access;
 gp->dumpconf = g_cache_dumpconf;

 newpp = g_new_providerf(gp, "cache/%s", gp->name);
 newpp->sectorsize = pp->sectorsize;
 newpp->mediasize = pp->mediasize;
 if (type == G_CACHE_TYPE_AUTOMATIC)
  newpp->mediasize -= pp->sectorsize;
 sc->sc_tail = BNO2OFF(OFF2BNO(newpp->mediasize, sc), sc);

 cp = g_new_consumer(gp);
 if (g_attach(cp, pp) != 0) {
  G_CACHE_DEBUG(0, "Cannot attach to provider %s.", pp->name);
  g_destroy_consumer(cp);
  g_destroy_provider(newpp);
  mtx_destroy(&sc->sc_mtx);
  g_free(sc);
  g_destroy_geom(gp);
  return (((void*)0));
 }

 g_error_provider(newpp, 0);
 G_CACHE_DEBUG(0, "Device %s created.", gp->name);
 callout_reset(&sc->sc_callout, g_cache_timeout * hz, g_cache_go, sc);
 return (gp);
}
