
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {int name; TYPE_1__* geom; } ;
struct g_mirror_softc {int dummy; } ;
struct g_consumer {int acw; int ace; int acr; struct g_provider* provider; int * private; } ;
struct TYPE_2__ {int flags; } ;


 int G_GEOM_WITHER ;
 int G_MIRROR_DEBUG (int,char*,int ,...) ;
 int M_WAITOK ;
 int g_access (struct g_consumer*,int ,int,int ) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 int g_mirror_destroy_consumer ;
 scalar_t__ g_mirror_is_busy (struct g_mirror_softc*,struct g_consumer*) ;
 int g_post_event (int ,struct g_consumer*,int ,int *) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_mirror_kill_consumer(struct g_mirror_softc *sc, struct g_consumer *cp)
{
 struct g_provider *pp;
 int retaste_wait;

 g_topology_assert();

 cp->private = ((void*)0);
 if (g_mirror_is_busy(sc, cp))
  return;
 pp = cp->provider;
 retaste_wait = 0;
 if (cp->acw == 1) {
  if ((pp->geom->flags & G_GEOM_WITHER) == 0)
   retaste_wait = 1;
 }
 G_MIRROR_DEBUG(2, "Access %s r%dw%de%d = %d", pp->name, -cp->acr,
     -cp->acw, -cp->ace, 0);
 if (cp->acr > 0 || cp->acw > 0 || cp->ace > 0)
  g_access(cp, -cp->acr, -cp->acw, -cp->ace);
 if (retaste_wait) {
  g_post_event(g_mirror_destroy_consumer, cp, M_WAITOK, ((void*)0));
  return;
 }
 G_MIRROR_DEBUG(1, "Consumer %s destroyed.", pp->name);
 g_detach(cp);
 g_destroy_consumer(cp);
}
