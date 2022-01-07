
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_geom {int flags; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; int stat; struct g_geom* geom; int * provider; } ;


 int G_GEOM_WITHER ;
 int G_T_TOPOLOGY ;
 int G_VALID_CONSUMER (struct g_consumer*) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct g_consumer*,int ) ;
 int consumer ;
 int devstat_remove_entry (int ) ;
 int g_cancel_event (struct g_consumer*) ;
 int g_do_wither () ;
 int g_free (struct g_consumer*) ;
 int g_topology_assert () ;
 int g_trace (int ,char*,struct g_consumer*) ;

void
g_destroy_consumer(struct g_consumer *cp)
{
 struct g_geom *gp;

 g_topology_assert();
 G_VALID_CONSUMER(cp);
 g_trace(G_T_TOPOLOGY, "g_destroy_consumer(%p)", cp);
 KASSERT (cp->provider == ((void*)0), ("g_destroy_consumer but attached"));
 KASSERT (cp->acr == 0, ("g_destroy_consumer with acr"));
 KASSERT (cp->acw == 0, ("g_destroy_consumer with acw"));
 KASSERT (cp->ace == 0, ("g_destroy_consumer with ace"));
 g_cancel_event(cp);
 gp = cp->geom;
 LIST_REMOVE(cp, consumer);
 devstat_remove_entry(cp->stat);
 g_free(cp);
 if (gp->flags & G_GEOM_WITHER)
  g_do_wither();
}
