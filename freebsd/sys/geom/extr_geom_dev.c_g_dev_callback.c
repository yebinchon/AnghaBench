
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_dev_softc {int sc_active; int * sc_alias; int * sc_dev; } ;
struct g_consumer {TYPE_1__* geom; struct g_dev_softc* private; } ;
struct TYPE_2__ {int name; } ;


 int G_T_TOPOLOGY ;
 int M_WAITOK ;
 int SC_A_ACTIVE ;
 int SC_A_DESTROY ;
 int atomic_fetchadd_int (int *,int ) ;
 int g_dev_destroy ;
 int g_post_event (int ,struct g_consumer*,int ,int *) ;
 int g_trace (int ,char*,struct g_consumer*,int ) ;

__attribute__((used)) static void
g_dev_callback(void *arg)
{
 struct g_consumer *cp;
 struct g_dev_softc *sc;
 int active;

 cp = arg;
 sc = cp->private;
 g_trace(G_T_TOPOLOGY, "g_dev_callback(%p(%s))", cp, cp->geom->name);

 sc->sc_dev = ((void*)0);
 sc->sc_alias = ((void*)0);
 active = atomic_fetchadd_int(&sc->sc_active, SC_A_DESTROY);
 if ((active & SC_A_ACTIVE) == 0)
  g_post_event(g_dev_destroy, cp, M_WAITOK, ((void*)0));
}
