
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gctl_req {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_class {int dummy; } ;


 int g_bde_create_geom (struct gctl_req*,struct g_class*,struct g_provider*) ;
 int g_bde_destroy_geom (struct gctl_req*,struct g_class*,struct g_geom*) ;
 int gctl_error (struct gctl_req*,char*) ;
 struct g_geom* gctl_get_geom (struct gctl_req*,struct g_class*,char*) ;
 struct g_provider* gctl_get_provider (struct gctl_req*,char*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void
g_bde_ctlreq(struct gctl_req *req, struct g_class *mp, char const *verb)
{
 struct g_geom *gp;
 struct g_provider *pp;

 if (!strcmp(verb, "create geom")) {
  pp = gctl_get_provider(req, "provider");
  if (pp != ((void*)0))
   g_bde_create_geom(req, mp, pp);
 } else if (!strcmp(verb, "destroy geom")) {
  gp = gctl_get_geom(req, mp, "geom");
  if (gp != ((void*)0))
   g_bde_destroy_geom(req, mp, gp);
 } else {
  gctl_error(req, "unknown verb");
 }
}
