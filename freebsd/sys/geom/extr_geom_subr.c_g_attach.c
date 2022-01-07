
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int consumers; } ;
struct g_consumer {int geom; struct g_provider* provider; int flags; } ;


 int G_CF_ORPHAN ;
 int G_T_TOPOLOGY ;
 int G_VALID_CONSUMER (struct g_consumer*) ;
 int G_VALID_PROVIDER (struct g_provider*) ;
 int KASSERT (int ,char*) ;
 int LIST_INSERT_HEAD (int *,struct g_consumer*,int ) ;
 int LIST_REMOVE (struct g_consumer*,int ) ;
 int consumers ;
 int g_topology_assert () ;
 int g_trace (int ,char*,struct g_consumer*,struct g_provider*) ;
 int redo_rank (int ) ;

int
g_attach(struct g_consumer *cp, struct g_provider *pp)
{
 int error;

 g_topology_assert();
 G_VALID_CONSUMER(cp);
 G_VALID_PROVIDER(pp);
 g_trace(G_T_TOPOLOGY, "g_attach(%p, %p)", cp, pp);
 KASSERT(cp->provider == ((void*)0), ("attach but attached"));
 cp->provider = pp;
 cp->flags &= ~G_CF_ORPHAN;
 LIST_INSERT_HEAD(&pp->consumers, cp, consumers);
 error = redo_rank(cp->geom);
 if (error) {
  LIST_REMOVE(cp, consumers);
  cp->provider = ((void*)0);
  redo_rank(cp->geom);
 }
 return (error);
}
