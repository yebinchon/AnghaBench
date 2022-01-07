
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;


 int EINPROGRESS ;
 int g_multipath_destroy (struct g_geom*) ;
 struct g_geom* g_multipath_find_geom (struct g_class*,char const*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*,...) ;
 char* gctl_get_asciiparam (struct gctl_req*,char*) ;

__attribute__((used)) static void
g_multipath_ctl_stop(struct gctl_req *req, struct g_class *mp)
{
 struct g_geom *gp;
 const char *name;
 int error;

 g_topology_assert();

 name = gctl_get_asciiparam(req, "arg0");
        if (name == ((void*)0)) {
                gctl_error(req, "No 'arg0' argument");
                return;
        }
 gp = g_multipath_find_geom(mp, name);
 if (gp == ((void*)0)) {
  gctl_error(req, "Device %s is invalid", name);
  return;
 }
 error = g_multipath_destroy(gp);
 if (error != 0 && error != EINPROGRESS)
  gctl_error(req, "failed to stop %s (err=%d)", name, error);
}
