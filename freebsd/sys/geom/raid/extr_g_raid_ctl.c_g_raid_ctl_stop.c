
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_raid_softc {int sc_lock; } ;
struct g_class {int dummy; } ;


 int G_RAID_DESTROY_HARD ;
 int G_RAID_DESTROY_SOFT ;
 int g_raid_destroy (struct g_raid_softc*,int) ;
 struct g_raid_softc* g_raid_find_node (struct g_class*,char const*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
g_raid_ctl_stop(struct gctl_req *req, struct g_class *mp)
{
 struct g_raid_softc *sc;
 const char *nodename;
 int *nargs, *force;
 int error, how;

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument.", "nargs");
  return;
 }
 if (*nargs != 1) {
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
 force = gctl_get_paraml(req, "force", sizeof(*force));
 if (force != ((void*)0) && *force)
  how = G_RAID_DESTROY_HARD;
 else
  how = G_RAID_DESTROY_SOFT;
 g_topology_unlock();
 sx_xlock(&sc->sc_lock);
 error = g_raid_destroy(sc, how);
 if (error != 0)
  gctl_error(req, "Array is busy.");
 g_topology_lock();
}
