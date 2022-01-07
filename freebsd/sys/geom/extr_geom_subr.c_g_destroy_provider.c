
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int stat; struct g_geom* geom; int consumers; } ;
struct g_geom {int flags; int (* providergone ) (struct g_provider*) ;} ;


 int G_GEOM_WITHER ;
 int G_VALID_PROVIDER (struct g_provider*) ;
 int KASSERT (int,char*) ;
 int LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct g_provider*,int ) ;
 int devstat_remove_entry (int ) ;
 int g_cancel_event (struct g_provider*) ;
 int g_do_wither () ;
 int g_free (struct g_provider*) ;
 int g_topology_assert () ;
 int provider ;
 int stub1 (struct g_provider*) ;

void
g_destroy_provider(struct g_provider *pp)
{
 struct g_geom *gp;

 g_topology_assert();
 G_VALID_PROVIDER(pp);
 KASSERT(LIST_EMPTY(&pp->consumers),
     ("g_destroy_provider but attached"));
 KASSERT (pp->acr == 0, ("g_destroy_provider with acr"));
 KASSERT (pp->acw == 0, ("g_destroy_provider with acw"));
 KASSERT (pp->ace == 0, ("g_destroy_provider with ace"));
 g_cancel_event(pp);
 LIST_REMOVE(pp, provider);
 gp = pp->geom;
 devstat_remove_entry(pp->stat);




 if (gp->providergone != ((void*)0))
  gp->providergone(pp);

 g_free(pp);
 if ((gp->flags & G_GEOM_WITHER))
  g_do_wither();
}
