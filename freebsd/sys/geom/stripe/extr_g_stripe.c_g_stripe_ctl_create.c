
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct sbuf {int dummy; } ;
struct gctl_req {int dummy; } ;
struct g_stripe_softc {int dummy; } ;
struct g_stripe_metadata {int md_magic; int md_name; int md_all; scalar_t__ md_provsize; int md_provider; scalar_t__ md_stripesize; scalar_t__ md_no; int md_id; int md_version; } ;
struct g_provider {int name; } ;
struct g_geom {struct g_stripe_softc* softc; int name; } ;
struct g_class {int dummy; } ;
typedef int param ;
typedef scalar_t__ off_t ;


 int G_STRIPE_DEBUG (int,char*,...) ;
 char const* G_STRIPE_MAGIC ;
 int G_STRIPE_TYPE_MANUAL ;
 int G_STRIPE_VERSION ;
 int KASSERT (int ,char*) ;
 int arc4random () ;
 int bzero (int ,int) ;
 struct g_provider* g_provider_by_name (char const*) ;
 scalar_t__ g_stripe_add_disk (struct g_stripe_softc*,struct g_provider*,int) ;
 struct g_geom* g_stripe_create (struct g_class*,struct g_stripe_metadata*,int ) ;
 int g_stripe_destroy (struct g_stripe_softc*,int) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 void* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_printf (struct sbuf*,char*,int ) ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (int,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
g_stripe_ctl_create(struct gctl_req *req, struct g_class *mp)
{
 u_int attached, no;
 struct g_stripe_metadata md;
 struct g_provider *pp;
 struct g_stripe_softc *sc;
 struct g_geom *gp;
 struct sbuf *sb;
 off_t *stripesize;
 const char *name;
 char param[16];
 int *nargs;

 g_topology_assert();
 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs <= 2) {
  gctl_error(req, "Too few arguments.");
  return;
 }

 strlcpy(md.md_magic, G_STRIPE_MAGIC, sizeof(md.md_magic));
 md.md_version = G_STRIPE_VERSION;
 name = gctl_get_asciiparam(req, "arg0");
 if (name == ((void*)0)) {
  gctl_error(req, "No 'arg%u' argument.", 0);
  return;
 }
 strlcpy(md.md_name, name, sizeof(md.md_name));
 md.md_id = arc4random();
 md.md_no = 0;
 md.md_all = *nargs - 1;
 stripesize = gctl_get_paraml(req, "stripesize", sizeof(*stripesize));
 if (stripesize == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "stripesize");
  return;
 }
 md.md_stripesize = (uint32_t)*stripesize;
 bzero(md.md_provider, sizeof(md.md_provider));

 md.md_provsize = 0;


 for (no = 1; no < *nargs; no++) {
  snprintf(param, sizeof(param), "arg%u", no);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%u' argument.", no);
   return;
  }
  if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
   name += strlen("/dev/");
  pp = g_provider_by_name(name);
  if (pp == ((void*)0)) {
   G_STRIPE_DEBUG(1, "Disk %s is invalid.", name);
   gctl_error(req, "Disk %s is invalid.", name);
   return;
  }
 }

 gp = g_stripe_create(mp, &md, G_STRIPE_TYPE_MANUAL);
 if (gp == ((void*)0)) {
  gctl_error(req, "Can't configure %s.", md.md_name);
  return;
 }

 sc = gp->softc;
 sb = sbuf_new_auto();
 sbuf_printf(sb, "Can't attach disk(s) to %s:", gp->name);
 for (attached = 0, no = 1; no < *nargs; no++) {
  snprintf(param, sizeof(param), "arg%u", no);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%u' argument.", no);
   continue;
  }
  if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
   name += strlen("/dev/");
  pp = g_provider_by_name(name);
  KASSERT(pp != ((void*)0), ("Provider %s disappear?!", name));
  if (g_stripe_add_disk(sc, pp, no - 1) != 0) {
   G_STRIPE_DEBUG(1, "Disk %u (%s) not attached to %s.",
       no, pp->name, gp->name);
   sbuf_printf(sb, " %s", pp->name);
   continue;
  }
  attached++;
 }
 sbuf_finish(sb);
 if (md.md_all != attached) {
  g_stripe_destroy(gp->softc, 1);
  gctl_error(req, "%s", sbuf_data(sb));
 }
 sbuf_delete(sb);
}
