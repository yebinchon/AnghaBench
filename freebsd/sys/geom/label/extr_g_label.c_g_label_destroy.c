
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int name; } ;
struct g_geom {int consumer; int provider; } ;
typedef scalar_t__ boolean_t ;


 int EBUSY ;
 int G_LABEL_DEBUG (int,char*,int ,...) ;
 struct g_provider* LIST_FIRST (int *) ;
 int g_slice_spoiled (struct g_provider*) ;
 int g_topology_assert () ;

__attribute__((used)) static int
g_label_destroy(struct g_geom *gp, boolean_t force)
{
 struct g_provider *pp;

 g_topology_assert();
 pp = LIST_FIRST(&gp->provider);
 if (pp != ((void*)0) && (pp->acr != 0 || pp->acw != 0 || pp->ace != 0)) {
  if (force) {
   G_LABEL_DEBUG(0, "Provider %s is still open, so it "
       "can't be definitely removed.", pp->name);
  } else {
   G_LABEL_DEBUG(1,
       "Provider %s is still open (r%dw%de%d).", pp->name,
       pp->acr, pp->acw, pp->ace);
   return (EBUSY);
  }
 } else if (pp != ((void*)0))
  G_LABEL_DEBUG(1, "Label %s removed.", pp->name);
 g_slice_spoiled(LIST_FIRST(&gp->consumer));
 return (0);
}
