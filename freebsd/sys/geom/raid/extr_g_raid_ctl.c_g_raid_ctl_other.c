
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_raid_softc {int sc_lock; int * sc_md; } ;
struct g_class {int dummy; } ;


 int G_RAID_MD_CTL (int *,struct gctl_req*) ;
 struct g_raid_softc* g_raid_find_node (struct g_class*,char const*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
g_raid_ctl_other(struct gctl_req *req, struct g_class *mp)
{
 struct g_raid_softc *sc;
 const char *nodename;
 int *nargs;
 int ctlstatus;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs < 1) {
  gctl_error(req, "Invalid number of arguments.");
  return;
 }
 nodename = gctl_get_asciiparam(req, "arg0");
 if (nodename == ((void*)0)) {
  gctl_error(req, "No array name received.");
  return;
 }
 sc = g_raid_find_node(mp, nodename);
 if (sc == ((void*)0)) {
  gctl_error(req, "Array '%s' not found.", nodename);
  return;
 }
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 if (sc->sc_md != ((void*)0)) {
  ctlstatus = G_RAID_MD_CTL(sc->sc_md, req);
  if (ctlstatus < 0)
   gctl_error(req, "Command failed: %d.", ctlstatus);
 }
 sx_xunlock(&sc->sc_lock);
 g_topology_lock();
}
