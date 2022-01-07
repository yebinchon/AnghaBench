
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_raid_softc {char* sc_name; int sc_lock; int sc_md; } ;
struct g_geom {scalar_t__ softc; } ;
struct g_class {int dummy; } ;
typedef int buf ;


 int G_RAID_MD_CTL (int ,struct gctl_req*) ;
 int G_RAID_MD_TASTE_FAIL ;
 int G_RAID_MD_TASTE_NEW ;
 int g_raid_create_node_format (char const*,struct gctl_req*,struct g_geom**) ;
 int g_raid_destroy_node (struct g_raid_softc*,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int gctl_set_param_err (struct gctl_req*,char*,char*,scalar_t__) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid_ctl_label(struct gctl_req *req, struct g_class *mp)
{
 struct g_geom *geom;
 struct g_raid_softc *sc;
 const char *format;
 int *nargs;
 int crstatus, ctlstatus;
 char buf[64];

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs < 4) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 format = gctl_get_asciiparam(req, "arg0");
 if (format == ((void*)0)) {
  gctl_error(req, "No format received.");
  return;
 }
 crstatus = g_raid_create_node_format(format, req, &geom);
 if (crstatus == G_RAID_MD_TASTE_FAIL) {
  gctl_error(req, "Failed to create array with format '%s'.",
      format);
  return;
 }
 sc = (struct g_raid_softc *)geom->softc;
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 ctlstatus = G_RAID_MD_CTL(sc->sc_md, req);
 if (ctlstatus < 0) {
  gctl_error(req, "Command failed: %d.", ctlstatus);
  if (crstatus == G_RAID_MD_TASTE_NEW)
   g_raid_destroy_node(sc, 0);
 } else {
  if (crstatus == G_RAID_MD_TASTE_NEW)
   snprintf(buf, sizeof(buf), "%s created\n", sc->sc_name);
  else
   snprintf(buf, sizeof(buf), "%s reused\n", sc->sc_name);
  gctl_set_param_err(req, "output", buf, strlen(buf) + 1);
 }
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
}
