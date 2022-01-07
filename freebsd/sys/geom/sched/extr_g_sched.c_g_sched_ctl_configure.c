
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gctl_req {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct g_gsched {int dummy; } ;
struct g_class {int dummy; } ;
struct TYPE_2__ {struct g_class* class; } ;


 int G_SCHED_DEBUG (int,char*,char const*) ;
 struct g_gsched* g_gsched_find (char const*) ;
 int g_gsched_unref (struct g_gsched*) ;
 struct g_provider* g_provider_by_name (char const*) ;
 char* g_sched_argi (struct gctl_req*,int) ;
 scalar_t__ g_sched_change_algo (struct gctl_req*,struct g_class*,struct g_provider*,struct g_gsched*) ;
 int g_sched_get_nargs (struct gctl_req*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,char const*) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;

__attribute__((used)) static void
g_sched_ctl_configure(struct gctl_req *req, struct g_class *mp)
{
 struct g_provider *pp;
 struct g_gsched *gsp;
 const char *name;
 int i, nargs;

 g_topology_assert();

 name = gctl_get_asciiparam(req, "algo");
 if (name == ((void*)0)) {
  gctl_error(req, "No '%s' argument", "algo");
  return;
 }

 gsp = g_gsched_find(name);
 if (gsp == ((void*)0)) {
  gctl_error(req, "Bad algorithm '%s'", name);
  return;
 }

 nargs = g_sched_get_nargs(req);





 for (i = 0; i < nargs; i++) {
  name = g_sched_argi(req, i);
  if (name == ((void*)0))
   break;
  pp = g_provider_by_name(name);
  if (pp == ((void*)0) || pp->geom->class != mp) {
   G_SCHED_DEBUG(1, "Provider %s is invalid.", name);
   gctl_error(req, "Provider %s is invalid.", name);
   break;
  }
  if (g_sched_change_algo(req, mp, pp, gsp) != 0)
   break;
 }

 g_gsched_unref(gsp);
}
