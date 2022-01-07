
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_provider {scalar_t__ mediasize; unsigned int sectorsize; char const* name; } ;
struct g_mirror_softc {int sc_flags; int sc_lock; } ;
struct g_mirror_metadata {char const* md_magic; char const* md_name; int md_all; int md_syncid; int md_balance; int md_mediasize; unsigned int md_sectorsize; unsigned int md_priority; void* md_did; scalar_t__ md_provsize; int md_provider; int md_mflags; scalar_t__ md_dflags; int md_slice; scalar_t__ md_sync_offset; scalar_t__ md_genid; void* md_mid; int md_version; } ;
struct g_geom {char const* name; struct g_mirror_softc* softc; int orphan; } ;
struct g_consumer {int dummy; } ;
struct g_class {int dummy; } ;
typedef int param ;
typedef scalar_t__ off_t ;
typedef int intmax_t ;


 int G_MIRROR_DEBUG (int,char*,...) ;
 int G_MIRROR_DESTROY_HARD ;
 int G_MIRROR_DEVICE_FLAG_DESTROY ;
 int G_MIRROR_DEVICE_FLAG_NOAUTOSYNC ;
 int G_MIRROR_DEVICE_FLAG_NOFAILSYNC ;
 int G_MIRROR_DEVICE_FLAG_TASTING ;
 char const* G_MIRROR_MAGIC ;
 int G_MIRROR_TYPE_MANUAL ;
 int G_MIRROR_VERSION ;
 scalar_t__ OFF_MAX ;
 void* arc4random () ;
 int balance_id (char const*) ;
 int bzero (int ,int) ;
 scalar_t__ g_access (struct g_consumer*,int,int ,int ) ;
 int g_attach (struct g_consumer*,struct g_provider*) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_destroy_geom (struct g_geom*) ;
 int g_detach (struct g_consumer*) ;
 scalar_t__ g_mirror_add_disk (struct g_mirror_softc*,struct g_provider*,struct g_mirror_metadata*) ;
 struct g_geom* g_mirror_create (struct g_class*,struct g_mirror_metadata*,int ) ;
 int g_mirror_create_orphan ;
 int g_mirror_destroy (struct g_mirror_softc*,int ) ;
 struct g_consumer* g_new_consumer (struct g_geom*) ;
 struct g_geom* g_new_geomf (struct g_class*,char*,char const*) ;
 struct g_provider* g_provider_by_name (char const*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 char const* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,char const*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int strlcpy (char const*,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_mirror_ctl_create(struct gctl_req *req, struct g_class *mp)
{
 struct g_mirror_metadata md;
 struct g_geom *gp;
 struct g_consumer *cp;
 struct g_provider *pp;
 struct g_mirror_softc *sc;
 struct sbuf *sb;
 const char *name;
 char param[16];
 int *nargs;
 intmax_t *val;
 int *ival;
 const char *sval;
 int bal;
 unsigned attached, no, sectorsize;
 off_t mediasize;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs <= 2) {
  gctl_error(req, "Too few arguments.");
  return;
 }

 strlcpy(md.md_magic, G_MIRROR_MAGIC, sizeof(md.md_magic));
 md.md_version = G_MIRROR_VERSION;
 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%u' argument.", 0);
  return;
 }
 strlcpy(md.md_name, name, sizeof(md.md_name));
 md.md_mid = arc4random();
 md.md_all = *nargs - 1;
 md.md_genid = 0;
 md.md_syncid = 1;
 md.md_sync_offset = 0;
 val = gctl_get_paraml(req, "slice", sizeof(*val));
 if (val == ((void*)0)) {
  gctl_error(req, "No slice argument.");
  return;
 }
 md.md_slice = *val;
 sval = gctl_get_asciiparam(req, "balance");
 if (sval == ((void*)0)) {
  gctl_error(req, "No balance argument.");
  return;
 }
 bal = balance_id(sval);
 if (bal < 0) {
  gctl_error(req, "Invalid balance algorithm.");
  return;
 }
 md.md_balance = bal;
 md.md_mflags = 0;
 md.md_dflags = 0;
 ival = gctl_get_paraml(req, "noautosync", sizeof(*ival));
 if (ival != ((void*)0) && *ival)
  md.md_mflags |= G_MIRROR_DEVICE_FLAG_NOAUTOSYNC;
 ival = gctl_get_paraml(req, "nofailsync", sizeof(*ival));
 if (ival != ((void*)0) && *ival)
  md.md_mflags |= G_MIRROR_DEVICE_FLAG_NOFAILSYNC;

 bzero(md.md_provider, sizeof(md.md_provider));
 md.md_provsize = 0;

 g_topology_lock();
 mediasize = OFF_MAX;
 sectorsize = 0;
 gp = g_new_geomf(mp, "%s", md.md_name);
 gp->orphan = g_mirror_create_orphan;
 cp = g_new_consumer(gp);
 for (no = 1; no < *nargs; no++) {
  snprintf(param, sizeof(param), "arg%u", no);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%u' argument.", no);
err:
   g_destroy_consumer(cp);
   g_destroy_geom(gp);
   g_topology_unlock();
   return;
  }
  if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
   name += strlen("/dev/");
  pp = g_provider_by_name(name);
  if (pp == ((void*)0)) {
   G_MIRROR_DEBUG(1, "Disk %s is invalid.", name);
   gctl_error(req, "Disk %s is invalid.", name);
   goto err;
  }
  g_attach(cp, pp);
  if (g_access(cp, 1, 0, 0) != 0) {
   G_MIRROR_DEBUG(1, "Can't open disk %s.", name);
   gctl_error(req, "Can't open disk %s.", name);
err2:
   g_detach(cp);
   goto err;
  }
  if (pp->mediasize == 0 || pp->sectorsize == 0) {
   G_MIRROR_DEBUG(1, "Disk %s has no media.", name);
   gctl_error(req, "Disk %s has no media.", name);
   g_access(cp, -1, 0, 0);
   goto err2;
  }
  if (pp->mediasize < mediasize)
   mediasize = pp->mediasize;
  if (pp->sectorsize > sectorsize)
   sectorsize = pp->sectorsize;
  g_access(cp, -1, 0, 0);
  g_detach(cp);
 }
 g_destroy_consumer(cp);
 g_destroy_geom(gp);
 md.md_mediasize = mediasize;
 md.md_sectorsize = sectorsize;
 md.md_mediasize -= (md.md_mediasize % md.md_sectorsize);

 gp = g_mirror_create(mp, &md, G_MIRROR_TYPE_MANUAL);
 if (gp == ((void*)0)) {
  gctl_error(req, "Can't create %s.", md.md_name);
  g_topology_unlock();
  return;
 }

 sc = gp->softc;
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 sc->sc_flags |= G_MIRROR_DEVICE_FLAG_TASTING;
 sb = sbuf_new_auto();
 sbuf_printf(sb, "Can't attach disk(s) to %s:", gp->name);
 for (attached = 0, no = 1; no < *nargs; no++) {
  snprintf(param, sizeof(param), "arg%u", no);
  name = gctl_get_asciiparam(req, param);
  if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
   name += strlen("/dev/");
  pp = g_provider_by_name(name);
  if (pp == ((void*)0)) {
   G_MIRROR_DEBUG(1, "Provider %s disappear?!", name);
   sbuf_printf(sb, " %s", name);
   continue;
  }
  md.md_did = arc4random();
  md.md_priority = no - 1;
  if (g_mirror_add_disk(sc, pp, &md) != 0) {
   G_MIRROR_DEBUG(1, "Disk %u (%s) not attached to %s.",
       no, pp->name, gp->name);
   sbuf_printf(sb, " %s", pp->name);
   continue;
  }
  attached++;
 }
 sbuf_finish(sb);
 sc->sc_flags &= ~G_MIRROR_DEVICE_FLAG_TASTING;
 if (md.md_all != attached ||
     (sc->sc_flags & G_MIRROR_DEVICE_FLAG_DESTROY) != 0) {
  g_mirror_destroy(gp->softc, G_MIRROR_DESTROY_HARD);
  gctl_error(req, "%s", sbuf_data(sb));
 } else
  sx_xunlock(&sc->sc_lock);
 sbuf_delete(sb);
}
