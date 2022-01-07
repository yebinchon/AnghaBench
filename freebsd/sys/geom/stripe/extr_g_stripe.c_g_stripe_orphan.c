
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_stripe_softc {int dummy; } ;
struct g_geom {struct g_stripe_softc* softc; } ;
struct g_consumer {struct g_geom* geom; } ;


 int g_stripe_remove_disk (struct g_consumer*) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_stripe_orphan(struct g_consumer *cp)
{
 struct g_stripe_softc *sc;
 struct g_geom *gp;

 g_topology_assert();
 gp = cp->geom;
 sc = gp->softc;
 if (sc == ((void*)0))
  return;

 g_stripe_remove_disk(cp);
}
