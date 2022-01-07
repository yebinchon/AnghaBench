
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int name; struct g_geom* geom; } ;
struct g_mountver_softc {int sc_access_r; int sc_access_w; int sc_access_e; scalar_t__ sc_orphaned; } ;
struct g_geom {struct g_mountver_softc* softc; int consumer; } ;
struct g_consumer {int dummy; } ;


 int KASSERT (int ,char*) ;
 struct g_consumer* LIST_FIRST (int *) ;
 int g_access (struct g_consumer*,int,int,int) ;
 int g_topology_assert () ;

__attribute__((used)) static int
g_mountver_access(struct g_provider *pp, int dr, int dw, int de)
{
 struct g_mountver_softc *sc;
 struct g_geom *gp;
 struct g_consumer *cp;

 g_topology_assert();

 gp = pp->geom;
 cp = LIST_FIRST(&gp->consumer);
 sc = gp->softc;
 if (sc == ((void*)0) && dr <= 0 && dw <= 0 && de <= 0)
  return (0);
 KASSERT(sc != ((void*)0), ("Trying to access withered provider \"%s\".", pp->name));

 sc->sc_access_r += dr;
 sc->sc_access_w += dw;
 sc->sc_access_e += de;

 if (sc->sc_orphaned)
  return (0);

 return (g_access(cp, dr, dw, de));
}
