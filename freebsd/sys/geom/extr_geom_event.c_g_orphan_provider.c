
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int error; int flags; int name; } ;


 int G_PF_ORPHAN ;
 int G_T_TOPOLOGY ;
 int KASSERT (int,char*) ;
 int TAILQ_INSERT_TAIL (int *,struct g_provider*,int ) ;
 int g_doorstep ;
 int g_eventlock ;
 int g_trace (int ,char*,struct g_provider*,int ,int) ;
 int g_wait_event ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int orphan ;
 int wakeup (int *) ;

void
g_orphan_provider(struct g_provider *pp, int error)
{


 g_trace(G_T_TOPOLOGY, "g_orphan_provider(%p(%s), %d)",
     pp, pp->name, error);
 KASSERT(error != 0,
     ("g_orphan_provider(%p(%s), 0) error must be non-zero\n",
      pp, pp->name));

 pp->error = error;
 mtx_lock(&g_eventlock);
 KASSERT(!(pp->flags & G_PF_ORPHAN),
     ("g_orphan_provider(%p(%s)), already an orphan", pp, pp->name));
 pp->flags |= G_PF_ORPHAN;
 TAILQ_INSERT_TAIL(&g_doorstep, pp, orphan);
 mtx_unlock(&g_eventlock);
 wakeup(&g_wait_event);
}
