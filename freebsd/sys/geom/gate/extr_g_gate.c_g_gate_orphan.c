
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_geom {struct g_gate_softc* softc; } ;
struct g_gate_softc {struct g_consumer* sc_readcons; } ;
struct g_consumer {TYPE_1__* provider; struct g_geom* geom; } ;
struct TYPE_2__ {int name; } ;


 int G_GATE_DEBUG (int,char*,int ) ;
 int KASSERT (int,char*) ;
 int g_access (struct g_consumer*,int,int ,int ) ;
 int g_destroy_consumer (struct g_consumer*) ;
 int g_detach (struct g_consumer*) ;
 int g_topology_assert () ;

__attribute__((used)) static void
g_gate_orphan(struct g_consumer *cp)
{
 struct g_gate_softc *sc;
 struct g_geom *gp;

 g_topology_assert();
 gp = cp->geom;
 sc = gp->softc;
 if (sc == ((void*)0))
  return;
 KASSERT(cp == sc->sc_readcons, ("cp=%p sc_readcons=%p", cp,
     sc->sc_readcons));
 sc->sc_readcons = ((void*)0);
 G_GATE_DEBUG(1, "Destroying read consumer on provider %s orphan.",
     cp->provider->name);
 (void)g_access(cp, -1, 0, 0);
 g_detach(cp);
 g_destroy_consumer(cp);
}
