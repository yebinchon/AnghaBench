
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {char* name; int sectorsize; int mediasize; } ;
struct g_geom {struct g_eli_worker* softc; int access; int dumpconf; int resize; void* orphan; void* spoiled; int start; } ;
struct g_eli_worker {int sc_nkey; int sc_flags; int sc_cpubind; int w_number; int sc_ealgo; int sc_aalgo; scalar_t__ sc_crypto; int sc_queue_mtx; int sc_workers; int sc_ekeylen; int sc_sectorsize; int sc_mediasize; int w_proc; int w_active; struct g_eli_worker* w_softc; int sc_ekeys_lock; int sc_queue; struct g_geom* sc_geom; } ;
struct g_eli_softc {int sc_nkey; int sc_flags; int sc_cpubind; int w_number; int sc_ealgo; int sc_aalgo; scalar_t__ sc_crypto; int sc_queue_mtx; int sc_workers; int sc_ekeylen; int sc_sectorsize; int sc_mediasize; int w_proc; int w_active; struct g_eli_softc* w_softc; int sc_ekeys_lock; int sc_queue; struct g_geom* sc_geom; } ;
struct g_eli_metadata {int md_flags; } ;
struct g_consumer {int acr; int * provider; } ;
struct g_class {int dummy; } ;





 scalar_t__ G_ELI_CRYPTO_SW ;
 int G_ELI_DEBUG (int,char*,char*,...) ;
 int G_ELI_FLAG_AUTH ;
 int G_ELI_FLAG_DESTROY ;
 int G_ELI_FLAG_RO ;
 int G_ELI_FLAG_WO_DETACH ;
 int G_ELI_SUFFIX ;
 int LIST_EMPTY (int *) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct g_eli_worker*,int ) ;
 int MTX_DEF ;
 int M_ELI ;
 int M_WAITOK ;
 int M_ZERO ;
 int PRIBIO ;
 int TRUE ;
 int bioq_init (int *) ;
 int bzero (struct g_eli_worker*,int) ;
 int eli_metadata_softc (struct g_eli_worker*,struct g_eli_metadata const*,int ,int ) ;
 int free (struct g_eli_worker*,int ) ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_destroy_geom (struct g_geom*) ;
 int g_detach (struct g_consumer*) ;
 int g_eli_access ;
 char* g_eli_algo2str (int) ;
 scalar_t__ g_eli_cpu_is_disabled (int) ;
 int g_eli_dumpconf ;
 int g_eli_freesession (struct g_eli_worker*) ;
 int g_eli_key_destroy (struct g_eli_worker*) ;
 int g_eli_mkey_propagate (struct g_eli_worker*,int const*) ;
 int g_eli_newsession (struct g_eli_worker*) ;
 void* g_eli_orphan ;
 int g_eli_resize ;
 int g_eli_start ;
 int g_eli_threads ;
 int g_eli_worker ;
 int g_error_provider (struct g_provider*,int ) ;
 struct g_consumer* g_new_consumer (struct g_geom*) ;
 struct g_geom* g_new_geomf (struct g_class*,char*,char*,int ) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,char*,int ) ;
 int g_std_access ;
 int gctl_error (struct gctl_req*,char*,char*,int) ;
 int gone_in (int,char*) ;
 int kproc_create (int ,struct g_eli_worker*,int *,int ,int ,char*,int,char*) ;
 struct g_eli_worker* malloc (int,int ,int) ;
 int mp_ncpus ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int w_next ;
 int wakeup (struct g_eli_worker*) ;

struct g_geom *
g_eli_create(struct gctl_req *req, struct g_class *mp, struct g_provider *bpp,
    const struct g_eli_metadata *md, const u_char *mkey, int nkey)
{
 struct g_eli_softc *sc;
 struct g_eli_worker *wr;
 struct g_geom *gp;
 struct g_provider *pp;
 struct g_consumer *cp;
 u_int i, threads;
 int dcw, error;

 G_ELI_DEBUG(1, "Creating device %s%s.", bpp->name, G_ELI_SUFFIX);

 gp = g_new_geomf(mp, "%s%s", bpp->name, G_ELI_SUFFIX);
 sc = malloc(sizeof(*sc), M_ELI, M_WAITOK | M_ZERO);
 gp->start = g_eli_start;




 gp->spoiled = g_eli_orphan;
 gp->orphan = g_eli_orphan;
 gp->resize = g_eli_resize;
 gp->dumpconf = g_eli_dumpconf;




 if (md->md_flags & (G_ELI_FLAG_WO_DETACH | G_ELI_FLAG_RO))
  gp->access = g_eli_access;
 else
  gp->access = g_std_access;

 eli_metadata_softc(sc, md, bpp->sectorsize, bpp->mediasize);
 sc->sc_nkey = nkey;

 gp->softc = sc;
 sc->sc_geom = gp;

 bioq_init(&sc->sc_queue);
 mtx_init(&sc->sc_queue_mtx, "geli:queue", ((void*)0), MTX_DEF);
 mtx_init(&sc->sc_ekeys_lock, "geli:ekeys", ((void*)0), MTX_DEF);

 pp = ((void*)0);
 cp = g_new_consumer(gp);
 error = g_attach(cp, bpp);
 if (error != 0) {
  if (req != ((void*)0)) {
   gctl_error(req, "Cannot attach to %s (error=%d).",
       bpp->name, error);
  } else {
   G_ELI_DEBUG(1, "Cannot attach to %s (error=%d).",
       bpp->name, error);
  }
  goto failed;
 }







 dcw = (sc->sc_flags & G_ELI_FLAG_RO) ? 0 : 1;
 error = g_access(cp, 1, dcw, 1);
 if (error != 0) {
  if (req != ((void*)0)) {
   gctl_error(req, "Cannot access %s (error=%d).",
       bpp->name, error);
  } else {
   G_ELI_DEBUG(1, "Cannot access %s (error=%d).",
       bpp->name, error);
  }
  goto failed;
 }




 g_eli_mkey_propagate(sc, mkey);

 LIST_INIT(&sc->sc_workers);

 threads = g_eli_threads;
 if (threads == 0)
  threads = mp_ncpus;
 sc->sc_cpubind = (mp_ncpus > 1 && threads == mp_ncpus);
 for (i = 0; i < threads; i++) {
  if (g_eli_cpu_is_disabled(i)) {
   G_ELI_DEBUG(1, "%s: CPU %u disabled, skipping.",
       bpp->name, i);
   continue;
  }
  wr = malloc(sizeof(*wr), M_ELI, M_WAITOK | M_ZERO);
  wr->w_softc = sc;
  wr->w_number = i;
  wr->w_active = TRUE;

  error = g_eli_newsession(wr);
  if (error != 0) {
   free(wr, M_ELI);
   if (req != ((void*)0)) {
    gctl_error(req, "Cannot set up crypto session "
        "for %s (error=%d).", bpp->name, error);
   } else {
    G_ELI_DEBUG(1, "Cannot set up crypto session "
        "for %s (error=%d).", bpp->name, error);
   }
   goto failed;
  }

  error = kproc_create(g_eli_worker, wr, &wr->w_proc, 0, 0,
      "g_eli[%u] %s", i, bpp->name);
  if (error != 0) {
   g_eli_freesession(wr);
   free(wr, M_ELI);
   if (req != ((void*)0)) {
    gctl_error(req, "Cannot create kernel thread "
        "for %s (error=%d).", bpp->name, error);
   } else {
    G_ELI_DEBUG(1, "Cannot create kernel thread "
        "for %s (error=%d).", bpp->name, error);
   }
   goto failed;
  }
  LIST_INSERT_HEAD(&sc->sc_workers, wr, w_next);
 }




 pp = g_new_providerf(gp, "%s%s", bpp->name, G_ELI_SUFFIX);
 pp->mediasize = sc->sc_mediasize;
 pp->sectorsize = sc->sc_sectorsize;

 g_error_provider(pp, 0);

 G_ELI_DEBUG(0, "Device %s created.", pp->name);
 G_ELI_DEBUG(0, "Encryption: %s %u", g_eli_algo2str(sc->sc_ealgo),
     sc->sc_ekeylen);
 switch (sc->sc_ealgo) {
 case 130:
  gone_in(13,
      "support for GEOM_ELI volumes encrypted with 3des");
  break;
 case 129:
  gone_in(13,
      "support for GEOM_ELI volumes encrypted with blowfish");
  break;
 }
 if (sc->sc_flags & G_ELI_FLAG_AUTH) {
  G_ELI_DEBUG(0, " Integrity: %s", g_eli_algo2str(sc->sc_aalgo));
  switch (sc->sc_aalgo) {
  case 128:
   gone_in(13,
      "support for GEOM_ELI volumes authenticated with hmac/md5");
   break;
  }
 }
 G_ELI_DEBUG(0, "    Crypto: %s",
     sc->sc_crypto == G_ELI_CRYPTO_SW ? "software" : "hardware");
 return (gp);
failed:
 mtx_lock(&sc->sc_queue_mtx);
 sc->sc_flags |= G_ELI_FLAG_DESTROY;
 wakeup(sc);



 while (!LIST_EMPTY(&sc->sc_workers)) {
  msleep(&sc->sc_workers, &sc->sc_queue_mtx, PRIBIO,
      "geli:destroy", 0);
 }
 mtx_destroy(&sc->sc_queue_mtx);
 if (cp->provider != ((void*)0)) {
  if (cp->acr == 1)
   g_access(cp, -1, -dcw, -1);
  g_detach(cp);
 }
 g_destroy_consumer(cp);
 g_destroy_geom(gp);
 g_eli_key_destroy(sc);
 bzero(sc, sizeof(*sc));
 free(sc, M_ELI);
 return (((void*)0));
}
