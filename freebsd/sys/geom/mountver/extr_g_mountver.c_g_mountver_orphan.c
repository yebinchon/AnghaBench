
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_mountver_softc {int sc_orphaned; int sc_provider_name; } ;
struct g_consumer {int ace; int acw; int acr; TYPE_1__* geom; } ;
struct TYPE_2__ {struct g_mountver_softc* softc; } ;


 int G_MOUNTVER_DEBUG (int ,char*,int ) ;
 int g_access (struct g_consumer*,int ,int ,int ) ;
 int g_detach (struct g_consumer*) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_mountver_orphan(struct g_consumer *cp)
{
 struct g_mountver_softc *sc;

 g_topology_assert();

 sc = cp->geom->softc;
 sc->sc_orphaned = 1;
 if (cp->acr > 0 || cp->acw > 0 || cp->ace > 0)
  g_access(cp, -cp->acr, -cp->acw, -cp->ace);
 g_detach(cp);
 G_MOUNTVER_DEBUG(0, "%s is offline.  Mount verification in progress.", sc->sc_provider_name);
}
