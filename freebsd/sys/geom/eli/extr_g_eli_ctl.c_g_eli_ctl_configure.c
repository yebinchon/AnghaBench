
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct g_eli_metadata {int md_flags; } ;
typedef struct g_eli_metadata u_char ;
struct gctl_req {int dummy; } ;
struct g_provider {int sectorsize; scalar_t__ mediasize; } ;
struct g_eli_softc {int sc_flags; TYPE_1__* sc_geom; } ;
struct g_consumer {struct g_provider* provider; } ;
struct g_class {int dummy; } ;
typedef int param ;
typedef int md ;
struct TYPE_2__ {int consumer; } ;


 int G_ELI_DEBUG (int,char*,char const*) ;
 int G_ELI_FLAG_AUTORESIZE ;
 int G_ELI_FLAG_BOOT ;
 int G_ELI_FLAG_GELIBOOT ;
 int G_ELI_FLAG_GELIDISPLAYPASS ;
 int G_ELI_FLAG_NODELETE ;
 int G_ELI_FLAG_ONETIME ;
 int G_ELI_FLAG_RO ;
 struct g_consumer* LIST_FIRST (int *) ;
 int M_ELI ;
 int M_WAITOK ;
 int M_ZERO ;
 int eli_metadata_encode (struct g_eli_metadata*,struct g_eli_metadata*) ;
 int explicit_bzero (struct g_eli_metadata*,int) ;
 int free (struct g_eli_metadata*,int ) ;
 struct g_eli_softc* g_eli_find_device (struct g_class*,char const*) ;
 int g_eli_read_metadata (struct g_class*,struct g_provider*,struct g_eli_metadata*) ;
 int g_topology_assert () ;
 int g_write_data (struct g_consumer*,scalar_t__,struct g_eli_metadata*,int) ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 struct g_eli_metadata* malloc (int,int ,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
g_eli_ctl_configure(struct gctl_req *req, struct g_class *mp)
{
 struct g_eli_softc *sc;
 struct g_eli_metadata md;
 struct g_provider *pp;
 struct g_consumer *cp;
 char param[16];
 const char *prov;
 u_char *sector;
 int *nargs, *boot, *noboot, *trim, *notrim, *geliboot, *nogeliboot;
 int *displaypass, *nodisplaypass, *autoresize, *noautoresize;
 int zero, error, changed;
 u_int i;

 g_topology_assert();

 changed = 0;
 zero = 0;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs <= 0) {
  gctl_error(req, "Missing device(s).");
  return;
 }

 boot = gctl_get_paraml(req, "boot", sizeof(*boot));
 if (boot == ((void*)0))
  boot = &zero;
 noboot = gctl_get_paraml(req, "noboot", sizeof(*noboot));
 if (noboot == ((void*)0))
  noboot = &zero;
 if (*boot && *noboot) {
  gctl_error(req, "Options -b and -B are mutually exclusive.");
  return;
 }
 if (*boot || *noboot)
  changed = 1;

 trim = gctl_get_paraml(req, "trim", sizeof(*trim));
 if (trim == ((void*)0))
  trim = &zero;
 notrim = gctl_get_paraml(req, "notrim", sizeof(*notrim));
 if (notrim == ((void*)0))
  notrim = &zero;
 if (*trim && *notrim) {
  gctl_error(req, "Options -t and -T are mutually exclusive.");
  return;
 }
 if (*trim || *notrim)
  changed = 1;

 geliboot = gctl_get_paraml(req, "geliboot", sizeof(*geliboot));
 if (geliboot == ((void*)0))
  geliboot = &zero;
 nogeliboot = gctl_get_paraml(req, "nogeliboot", sizeof(*nogeliboot));
 if (nogeliboot == ((void*)0))
  nogeliboot = &zero;
 if (*geliboot && *nogeliboot) {
  gctl_error(req, "Options -g and -G are mutually exclusive.");
  return;
 }
 if (*geliboot || *nogeliboot)
  changed = 1;

 displaypass = gctl_get_paraml(req, "displaypass", sizeof(*displaypass));
 if (displaypass == ((void*)0))
  displaypass = &zero;
 nodisplaypass = gctl_get_paraml(req, "nodisplaypass", sizeof(*nodisplaypass));
 if (nodisplaypass == ((void*)0))
  nodisplaypass = &zero;
 if (*displaypass && *nodisplaypass) {
  gctl_error(req, "Options -d and -D are mutually exclusive.");
  return;
 }
 if (*displaypass || *nodisplaypass)
  changed = 1;

 autoresize = gctl_get_paraml(req, "autoresize", sizeof(*autoresize));
 if (autoresize == ((void*)0))
  autoresize = &zero;
 noautoresize = gctl_get_paraml(req, "noautoresize",
     sizeof(*noautoresize));
 if (noautoresize == ((void*)0))
  noautoresize = &zero;
 if (*autoresize && *noautoresize) {
  gctl_error(req, "Options -r and -R are mutually exclusive.");
  return;
 }
 if (*autoresize || *noautoresize)
  changed = 1;

 if (!changed) {
  gctl_error(req, "No option given.");
  return;
 }

 for (i = 0; i < *nargs; i++) {
  snprintf(param, sizeof(param), "arg%d", i);
  prov = gctl_get_asciiparam(req, param);
  if (prov == ((void*)0)) {
   gctl_error(req, "No 'arg%d' argument.", i);
   return;
  }
  sc = g_eli_find_device(mp, prov);
  if (sc == ((void*)0)) {




   G_ELI_DEBUG(1, "Skipping configuration of not attached "
       "provider %s.", prov);
   continue;
  }
  if (sc->sc_flags & G_ELI_FLAG_RO) {
   gctl_error(req, "Cannot change configuration of "
       "read-only provider %s.", prov);
   continue;
  }

  if (*boot && (sc->sc_flags & G_ELI_FLAG_BOOT)) {
   G_ELI_DEBUG(1, "BOOT flag already configured for %s.",
       prov);
   continue;
  } else if (*noboot && !(sc->sc_flags & G_ELI_FLAG_BOOT)) {
   G_ELI_DEBUG(1, "BOOT flag not configured for %s.",
       prov);
   continue;
  }

  if (*notrim && (sc->sc_flags & G_ELI_FLAG_NODELETE)) {
   G_ELI_DEBUG(1, "TRIM disable flag already configured for %s.",
       prov);
   continue;
  } else if (*trim && !(sc->sc_flags & G_ELI_FLAG_NODELETE)) {
   G_ELI_DEBUG(1, "TRIM disable flag not configured for %s.",
       prov);
   continue;
  }

  if (*geliboot && (sc->sc_flags & G_ELI_FLAG_GELIBOOT)) {
   G_ELI_DEBUG(1, "GELIBOOT flag already configured for %s.",
       prov);
   continue;
  } else if (*nogeliboot && !(sc->sc_flags & G_ELI_FLAG_GELIBOOT)) {
   G_ELI_DEBUG(1, "GELIBOOT flag not configured for %s.",
       prov);
   continue;
  }

  if (*displaypass && (sc->sc_flags & G_ELI_FLAG_GELIDISPLAYPASS)) {
   G_ELI_DEBUG(1, "GELIDISPLAYPASS flag already configured for %s.",
       prov);
   continue;
  } else if (*nodisplaypass &&
      !(sc->sc_flags & G_ELI_FLAG_GELIDISPLAYPASS)) {
   G_ELI_DEBUG(1, "GELIDISPLAYPASS flag not configured for %s.",
       prov);
   continue;
  }

  if (*autoresize && (sc->sc_flags & G_ELI_FLAG_AUTORESIZE)) {
   G_ELI_DEBUG(1, "AUTORESIZE flag already configured for %s.",
       prov);
   continue;
  } else if (*noautoresize &&
      !(sc->sc_flags & G_ELI_FLAG_AUTORESIZE)) {
   G_ELI_DEBUG(1, "AUTORESIZE flag not configured for %s.",
       prov);
   continue;
  }

  if (!(sc->sc_flags & G_ELI_FLAG_ONETIME)) {







   cp = LIST_FIRST(&sc->sc_geom->consumer);
   pp = cp->provider;
   error = g_eli_read_metadata(mp, pp, &md);
   if (error != 0) {
       gctl_error(req,
    "Cannot read metadata from %s (error=%d).",
    prov, error);
       continue;
   }
  }

  if (*boot) {
   md.md_flags |= G_ELI_FLAG_BOOT;
   sc->sc_flags |= G_ELI_FLAG_BOOT;
  } else if (*noboot) {
   md.md_flags &= ~G_ELI_FLAG_BOOT;
   sc->sc_flags &= ~G_ELI_FLAG_BOOT;
  }

  if (*notrim) {
   md.md_flags |= G_ELI_FLAG_NODELETE;
   sc->sc_flags |= G_ELI_FLAG_NODELETE;
  } else if (*trim) {
   md.md_flags &= ~G_ELI_FLAG_NODELETE;
   sc->sc_flags &= ~G_ELI_FLAG_NODELETE;
  }

  if (*geliboot) {
   md.md_flags |= G_ELI_FLAG_GELIBOOT;
   sc->sc_flags |= G_ELI_FLAG_GELIBOOT;
  } else if (*nogeliboot) {
   md.md_flags &= ~G_ELI_FLAG_GELIBOOT;
   sc->sc_flags &= ~G_ELI_FLAG_GELIBOOT;
  }

  if (*displaypass) {
   md.md_flags |= G_ELI_FLAG_GELIDISPLAYPASS;
   sc->sc_flags |= G_ELI_FLAG_GELIDISPLAYPASS;
  } else if (*nodisplaypass) {
   md.md_flags &= ~G_ELI_FLAG_GELIDISPLAYPASS;
   sc->sc_flags &= ~G_ELI_FLAG_GELIDISPLAYPASS;
  }

  if (*autoresize) {
   md.md_flags |= G_ELI_FLAG_AUTORESIZE;
   sc->sc_flags |= G_ELI_FLAG_AUTORESIZE;
  } else if (*noautoresize) {
   md.md_flags &= ~G_ELI_FLAG_AUTORESIZE;
   sc->sc_flags &= ~G_ELI_FLAG_AUTORESIZE;
  }

  if (sc->sc_flags & G_ELI_FLAG_ONETIME) {

   continue;
  }

  sector = malloc(pp->sectorsize, M_ELI, M_WAITOK | M_ZERO);
  eli_metadata_encode(&md, sector);
  error = g_write_data(cp, pp->mediasize - pp->sectorsize, sector,
      pp->sectorsize);
  if (error != 0) {
   gctl_error(req,
       "Cannot store metadata on %s (error=%d).",
       prov, error);
  }
  explicit_bzero(&md, sizeof(md));
  explicit_bzero(sector, pp->sectorsize);
  free(sector, M_ELI);
 }
}
