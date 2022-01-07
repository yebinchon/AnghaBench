
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_eli_softc {int dummy; } ;
struct g_consumer {TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_eli_softc* softc; } ;


 int TRUE ;
 int g_eli_destroy (struct g_eli_softc*,int ) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_eli_orphan(struct g_consumer *cp)
{
 struct g_eli_softc *sc;

 g_topology_assert();
 sc = cp->geom->softc;
 if (sc == ((void*)0))
  return;
 g_eli_destroy(sc, TRUE);
}
