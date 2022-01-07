
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ mediasize; char* name; int flags; int sectorsize; } ;
struct g_geom {char* name; struct g_gate_softc* softc; int dumpconf; int orphan; int access; int start; } ;
struct g_gate_softc {int sc_flags; int sc_seq; scalar_t__ sc_queue_size; int sc_timeout; size_t sc_unit; char* sc_name; scalar_t__ sc_readoffset; int sc_queue_mtx; int sc_callout; struct g_provider* sc_provider; struct g_consumer* sc_readcons; scalar_t__ sc_queue_count; int sc_outqueue; int sc_inqueue; int sc_info; } ;
struct g_gate_ctl_create {scalar_t__ gctl_mediasize; int gctl_sectorsize; int gctl_flags; size_t gctl_unit; char* gctl_name; scalar_t__ gctl_maxcount; int gctl_timeout; char* gctl_readprov; int gctl_readoffset; int gctl_info; } ;
struct g_consumer {int flags; } ;
typedef int name ;


 int EEXIST ;
 int EINVAL ;
 int G_CF_DIRECT_RECEIVE ;
 int G_CF_DIRECT_SEND ;
 int G_GATE_DEBUG (int,char*,...) ;
 int G_GATE_FLAG_READONLY ;
 int G_GATE_FLAG_WRITEONLY ;
 scalar_t__ G_GATE_MAX_QUEUE_SIZE ;
 size_t G_GATE_NAME_GIVEN ;
 char* G_GATE_PROVIDER_NAME ;
 size_t G_GATE_UNIT_AUTO ;
 int G_GATE_USERFLAGS ;
 int G_PF_DIRECT_RECEIVE ;
 int G_PF_DIRECT_SEND ;
 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int M_GATE ;
 int M_WAITOK ;
 int M_ZERO ;
 int NAME_MAX ;
 int bioq_init (int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,struct g_gate_softc*) ;
 int free (struct g_gate_softc*,int ) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_destroy_geom (struct g_geom*) ;
 int g_detach (struct g_consumer*) ;
 int g_error_provider (struct g_provider*,int ) ;
 int g_gate_access ;
 int g_gate_class ;
 int g_gate_dumpconf ;
 size_t g_gate_getunit (size_t,int*) ;
 int g_gate_guard ;
 int g_gate_maxunits ;
 scalar_t__ g_gate_nunits ;
 int g_gate_orphan ;
 int g_gate_start ;
 struct g_gate_softc** g_gate_units ;
 int g_gate_units_lock ;
 struct g_consumer* g_new_consumer (struct g_geom*) ;
 struct g_geom* g_new_geomf (int *,char*,char*) ;
 struct g_provider* g_new_providerf (struct g_geom*,char*,char*) ;
 struct g_provider* g_provider_by_name (char*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int hz ;
 struct g_gate_softc* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int powerof2 (int) ;
 int snprintf (char*,int,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
g_gate_create(struct g_gate_ctl_create *ggio)
{
 struct g_gate_softc *sc;
 struct g_geom *gp;
 struct g_provider *pp, *ropp;
 struct g_consumer *cp;
 char name[NAME_MAX];
 int error = 0, unit;

 if (ggio->gctl_mediasize <= 0) {
  G_GATE_DEBUG(1, "Invalid media size.");
  return (EINVAL);
 }
 if (ggio->gctl_sectorsize <= 0) {
  G_GATE_DEBUG(1, "Invalid sector size.");
  return (EINVAL);
 }
 if (!powerof2(ggio->gctl_sectorsize)) {
  G_GATE_DEBUG(1, "Invalid sector size.");
  return (EINVAL);
 }
 if ((ggio->gctl_mediasize % ggio->gctl_sectorsize) != 0) {
  G_GATE_DEBUG(1, "Invalid media size.");
  return (EINVAL);
 }
 if ((ggio->gctl_flags & G_GATE_FLAG_READONLY) != 0 &&
     (ggio->gctl_flags & G_GATE_FLAG_WRITEONLY) != 0) {
  G_GATE_DEBUG(1, "Invalid flags.");
  return (EINVAL);
 }
 if (ggio->gctl_unit != G_GATE_UNIT_AUTO &&
     ggio->gctl_unit != G_GATE_NAME_GIVEN &&
     ggio->gctl_unit < 0) {
  G_GATE_DEBUG(1, "Invalid unit number.");
  return (EINVAL);
 }
 if (ggio->gctl_unit == G_GATE_NAME_GIVEN &&
     ggio->gctl_name[0] == '\0') {
  G_GATE_DEBUG(1, "No device name.");
  return (EINVAL);
 }

 sc = malloc(sizeof(*sc), M_GATE, M_WAITOK | M_ZERO);
 sc->sc_flags = (ggio->gctl_flags & G_GATE_USERFLAGS);
 strlcpy(sc->sc_info, ggio->gctl_info, sizeof(sc->sc_info));
 sc->sc_seq = 1;
 bioq_init(&sc->sc_inqueue);
 bioq_init(&sc->sc_outqueue);
 mtx_init(&sc->sc_queue_mtx, "gg:queue", ((void*)0), MTX_DEF);
 sc->sc_queue_count = 0;
 sc->sc_queue_size = ggio->gctl_maxcount;
 if (sc->sc_queue_size > G_GATE_MAX_QUEUE_SIZE)
  sc->sc_queue_size = G_GATE_MAX_QUEUE_SIZE;
 sc->sc_timeout = ggio->gctl_timeout;
 callout_init(&sc->sc_callout, 1);

 mtx_lock(&g_gate_units_lock);
 sc->sc_unit = g_gate_getunit(ggio->gctl_unit, &error);
 if (sc->sc_unit < 0)
  goto fail1;
 if (ggio->gctl_unit == G_GATE_NAME_GIVEN)
  snprintf(name, sizeof(name), "%s", ggio->gctl_name);
 else {
  snprintf(name, sizeof(name), "%s%d", G_GATE_PROVIDER_NAME,
      sc->sc_unit);
 }

 for (unit = 0; unit < g_gate_maxunits; unit++) {
  if (g_gate_units[unit] == ((void*)0))
   continue;
  if (strcmp(name, g_gate_units[unit]->sc_name) != 0)
   continue;
  error = EEXIST;
  goto fail1;
 }
 sc->sc_name = name;
 g_gate_units[sc->sc_unit] = sc;
 g_gate_nunits++;
 mtx_unlock(&g_gate_units_lock);

 g_topology_lock();

 if (ggio->gctl_readprov[0] == '\0') {
  ropp = ((void*)0);
 } else {
  ropp = g_provider_by_name(ggio->gctl_readprov);
  if (ropp == ((void*)0)) {
   G_GATE_DEBUG(1, "Provider %s doesn't exist.",
       ggio->gctl_readprov);
   error = EINVAL;
   goto fail2;
  }
  if ((ggio->gctl_readoffset % ggio->gctl_sectorsize) != 0) {
   G_GATE_DEBUG(1, "Invalid read offset.");
   error = EINVAL;
   goto fail2;
  }
  if (ggio->gctl_mediasize + ggio->gctl_readoffset >
      ropp->mediasize) {
   G_GATE_DEBUG(1, "Invalid read offset or media size.");
   error = EINVAL;
   goto fail2;
  }
 }

 gp = g_new_geomf(&g_gate_class, "%s", name);
 gp->start = g_gate_start;
 gp->access = g_gate_access;
 gp->orphan = g_gate_orphan;
 gp->dumpconf = g_gate_dumpconf;
 gp->softc = sc;

 if (ropp != ((void*)0)) {
  cp = g_new_consumer(gp);
  cp->flags |= G_CF_DIRECT_SEND | G_CF_DIRECT_RECEIVE;
  error = g_attach(cp, ropp);
  if (error != 0) {
   G_GATE_DEBUG(1, "Unable to attach to %s.", ropp->name);
   goto fail3;
  }
  error = g_access(cp, 1, 0, 0);
  if (error != 0) {
   G_GATE_DEBUG(1, "Unable to access %s.", ropp->name);
   g_detach(cp);
   goto fail3;
  }
  sc->sc_readcons = cp;
  sc->sc_readoffset = ggio->gctl_readoffset;
 }

 ggio->gctl_unit = sc->sc_unit;

 pp = g_new_providerf(gp, "%s", name);
 pp->flags |= G_PF_DIRECT_SEND | G_PF_DIRECT_RECEIVE;
 pp->mediasize = ggio->gctl_mediasize;
 pp->sectorsize = ggio->gctl_sectorsize;
 sc->sc_provider = pp;
 g_error_provider(pp, 0);

 g_topology_unlock();
 mtx_lock(&g_gate_units_lock);
 sc->sc_name = sc->sc_provider->name;
 mtx_unlock(&g_gate_units_lock);
 G_GATE_DEBUG(1, "Device %s created.", gp->name);

 if (sc->sc_timeout > 0) {
  callout_reset(&sc->sc_callout, sc->sc_timeout * hz,
      g_gate_guard, sc);
 }
 return (0);
fail3:
 g_destroy_consumer(cp);
 g_destroy_geom(gp);
fail2:
 g_topology_unlock();
 mtx_lock(&g_gate_units_lock);
 g_gate_units[sc->sc_unit] = ((void*)0);
 KASSERT(g_gate_nunits > 0, ("negative g_gate_nunits?"));
 g_gate_nunits--;
fail1:
 mtx_unlock(&g_gate_units_lock);
 mtx_destroy(&sc->sc_queue_mtx);
 free(sc, M_GATE);
 return (error);
}
