
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_provider {int acr; int acw; int ace; TYPE_1__* geom; int name; } ;
struct g_journal_softc {int sc_flags; int sc_name; } ;
struct TYPE_2__ {struct g_journal_softc* softc; } ;


 int ENXIO ;
 int GJF_DEVICE_CLEAN ;
 int GJF_DEVICE_DESTROY ;
 int GJ_DEBUG (int,char*,int ,...) ;
 int g_journal_metadata_update (struct g_journal_softc*) ;
 int g_topology_assert () ;
 int g_topology_lock () ;
 int g_topology_unlock () ;

__attribute__((used)) static int
g_journal_access(struct g_provider *pp, int acr, int acw, int ace)
{
 struct g_journal_softc *sc;
 int dcr, dcw, dce;

 g_topology_assert();
 GJ_DEBUG(2, "Access request for %s: r%dw%de%d.", pp->name,
     acr, acw, ace);

 dcr = pp->acr + acr;
 dcw = pp->acw + acw;
 dce = pp->ace + ace;

 sc = pp->geom->softc;
 if (sc == ((void*)0) || (sc->sc_flags & GJF_DEVICE_DESTROY)) {
  if (acr <= 0 && acw <= 0 && ace <= 0)
   return (0);
  else
   return (ENXIO);
 }
 if (pp->acw == 0 && dcw > 0) {
  GJ_DEBUG(1, "Marking %s as dirty.", sc->sc_name);
  sc->sc_flags &= ~GJF_DEVICE_CLEAN;
  g_topology_unlock();
  g_journal_metadata_update(sc);
  g_topology_lock();
 }






 return (0);
}
