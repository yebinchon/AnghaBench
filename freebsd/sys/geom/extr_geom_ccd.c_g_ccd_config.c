
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;


 int g_ccd_create (struct gctl_req*,struct g_class*) ;
 int g_ccd_destroy_geom (struct gctl_req*,struct g_class*,struct g_geom*) ;
 int g_ccd_list (struct gctl_req*,struct g_class*) ;
 int g_topology_assert () ;
 int gctl_error (struct gctl_req*,char*) ;
 struct g_geom* gctl_get_geom (struct gctl_req*,struct g_class*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
g_ccd_config(struct gctl_req *req, struct g_class *mp, char const *verb)
{
 struct g_geom *gp;

 g_topology_assert();
 if (!strcmp(verb, "create geom")) {
  g_ccd_create(req, mp);
 } else if (!strcmp(verb, "destroy geom")) {
  gp = gctl_get_geom(req, mp, "geom");
  if (gp != ((void*)0))
  g_ccd_destroy_geom(req, mp, gp);
 } else if (!strcmp(verb, "list")) {
  g_ccd_list(req, mp);
 } else {
  gctl_error(req, "unknown verb");
 }
}
