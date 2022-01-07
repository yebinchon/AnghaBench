
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gctl_req {int dummy; } ;
struct g_virstor_softc {TYPE_1__* geom; } ;
struct g_class {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int LOG_MSG (int ,char*,int ,...) ;
 int LVL_ERROR ;
 int LVL_INFO ;
 int TRUE ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int sprintf (char*,char*,int) ;
 int update_metadata (struct g_virstor_softc*) ;
 struct g_virstor_softc* virstor_find_geom (struct g_class*,char const*) ;
 int virstor_geom_destroy (struct g_virstor_softc*,int ,int ) ;

__attribute__((used)) static void
virstor_ctl_stop(struct gctl_req *req, struct g_class *cp)
{
 int *force, *nargs;
 int i;

 nargs = gctl_get_paraml(req, "nargs", sizeof *nargs);
 if (nargs == ((void*)0)) {
  gctl_error(req, "Error fetching argument '%s'", "nargs");
  return;
 }
 if (*nargs < 1) {
  gctl_error(req, "Invalid number of arguments");
  return;
 }
 force = gctl_get_paraml(req, "force", sizeof *force);
 if (force == ((void*)0)) {
  gctl_error(req, "Error fetching argument '%s'", "force");
  return;
 }

 g_topology_lock();
 for (i = 0; i < *nargs; i++) {
  char param[8];
  const char *name;
  struct g_virstor_softc *sc;
  int error;

  sprintf(param, "arg%d", i);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%d' argument", i);
   g_topology_unlock();
   return;
  }
  sc = virstor_find_geom(cp, name);
  if (sc == ((void*)0)) {
   gctl_error(req, "Don't know anything about '%s'", name);
   g_topology_unlock();
   return;
  }

  LOG_MSG(LVL_INFO, "Stopping %s by the userland command",
      sc->geom->name);
  update_metadata(sc);
  if ((error = virstor_geom_destroy(sc, TRUE, TRUE)) != 0) {
   LOG_MSG(LVL_ERROR, "Cannot destroy %s: %d",
       sc->geom->name, error);
  }
 }
 g_topology_unlock();
}
