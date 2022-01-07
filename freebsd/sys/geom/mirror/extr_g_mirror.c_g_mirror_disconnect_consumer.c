
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_mirror_softc {int dummy; } ;
struct g_consumer {int * provider; } ;


 int g_destroy_consumer (struct g_consumer*) ;
 int g_mirror_kill_consumer (struct g_mirror_softc*,struct g_consumer*) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_mirror_disconnect_consumer(struct g_mirror_softc *sc, struct g_consumer *cp)
{

 g_topology_assert();

 if (cp == ((void*)0))
  return;
 if (cp->provider != ((void*)0))
  g_mirror_kill_consumer(sc, cp);
 else
  g_destroy_consumer(cp);
}
