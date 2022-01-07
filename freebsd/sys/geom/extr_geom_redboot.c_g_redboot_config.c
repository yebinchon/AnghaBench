
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;


 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*) ;
 struct g_geom* gctl_get_geom (struct gctl_req*,struct g_class*,char*) ;

__attribute__((used)) static void
g_redboot_config(struct gctl_req *req, struct g_class *mp, const char *verb)
{
 struct g_geom *gp;

 g_topology_assert();
 gp = gctl_get_geom(req, mp, "geom");
 if (gp == ((void*)0))
  return;
 gctl_error(req, "Unknown verb");
}
