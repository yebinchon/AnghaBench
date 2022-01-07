
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gctl_req {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct g_nop_softc {scalar_t__ sc_wrotebytes; scalar_t__ sc_readbytes; scalar_t__ sc_cmd2s; scalar_t__ sc_cmd1s; scalar_t__ sc_cmd0s; scalar_t__ sc_flushes; scalar_t__ sc_getattrs; scalar_t__ sc_deletes; scalar_t__ sc_writes; scalar_t__ sc_reads; } ;
struct g_class {int dummy; } ;
typedef int param ;
struct TYPE_2__ {struct g_nop_softc* softc; struct g_class* class; } ;


 int G_NOP_DEBUG (int,char*,char const*) ;
 struct g_provider* g_provider_by_name (char const*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;
 int* gctl_get_paraml (struct gctl_req*,char*,int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
g_nop_ctl_reset(struct gctl_req *req, struct g_class *mp)
{
 struct g_nop_softc *sc;
 struct g_provider *pp;
 const char *name;
 char param[16];
 int i, *nargs;

 g_topology_assert();

 nargs = gctl_get_paraml(req, "nargs", sizeof(*nargs));
 if (nargs == ((void*)0)) {
  gctl_error(req, "No '%s' argument", "nargs");
  return;
 }
 if (*nargs <= 0) {
  gctl_error(req, "Missing device(s).");
  return;
 }

 for (i = 0; i < *nargs; i++) {
  snprintf(param, sizeof(param), "arg%d", i);
  name = gctl_get_asciiparam(req, param);
  if (name == ((void*)0)) {
   gctl_error(req, "No 'arg%d' argument", i);
   return;
  }
  if (strncmp(name, "/dev/", strlen("/dev/")) == 0)
   name += strlen("/dev/");
  pp = g_provider_by_name(name);
  if (pp == ((void*)0) || pp->geom->class != mp) {
   G_NOP_DEBUG(1, "Provider %s is invalid.", name);
   gctl_error(req, "Provider %s is invalid.", name);
   return;
  }
  sc = pp->geom->softc;
  sc->sc_reads = 0;
  sc->sc_writes = 0;
  sc->sc_deletes = 0;
  sc->sc_getattrs = 0;
  sc->sc_flushes = 0;
  sc->sc_cmd0s = 0;
  sc->sc_cmd1s = 0;
  sc->sc_cmd2s = 0;
  sc->sc_readbytes = 0;
  sc->sc_wrotebytes = 0;
 }
}
