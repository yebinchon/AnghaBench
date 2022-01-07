
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_provider {int flags; TYPE_1__* geom; } ;
struct g_consumer {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; scalar_t__ nstart; scalar_t__ nend; TYPE_2__* geom; struct g_provider* provider; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 int G_GEOM_WITHER ;
 int G_PF_WITHER ;
 int G_T_TOPOLOGY ;
 int G_VALID_CONSUMER (struct g_consumer*) ;
 int KASSERT (int,char*) ;
 int LIST_REMOVE (struct g_consumer*,int ) ;
 int consumers ;
 int g_do_wither () ;
 int g_topology_assert () ;
 int g_trace (int ,char*,struct g_consumer*) ;
 int redo_rank (TYPE_2__*) ;

void
g_detach(struct g_consumer *cp)
{
 struct g_provider *pp;

 g_topology_assert();
 G_VALID_CONSUMER(cp);
 g_trace(G_T_TOPOLOGY, "g_detach(%p)", cp);
 KASSERT(cp->provider != ((void*)0), ("detach but not attached"));
 KASSERT(cp->acr == 0, ("detach but nonzero acr"));
 KASSERT(cp->acw == 0, ("detach but nonzero acw"));
 KASSERT(cp->ace == 0, ("detach but nonzero ace"));
 KASSERT(cp->nstart == cp->nend,
     ("detach with active requests"));
 pp = cp->provider;
 LIST_REMOVE(cp, consumers);
 cp->provider = ((void*)0);
 if ((cp->geom->flags & G_GEOM_WITHER) ||
     (pp->geom->flags & G_GEOM_WITHER) ||
     (pp->flags & G_PF_WITHER))
  g_do_wither();
 redo_rank(cp->geom);
}
