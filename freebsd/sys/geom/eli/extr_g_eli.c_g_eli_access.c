
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; struct g_geom* geom; } ;
struct g_geom {struct g_eli_softc* softc; } ;
struct g_eli_softc {int sc_flags; } ;


 int EROFS ;
 int G_ELI_FLAG_RO ;
 int G_ELI_FLAG_RW_DETACH ;
 int G_ELI_FLAG_WOPEN ;
 int M_WAITOK ;
 int g_eli_last_close ;
 int g_post_event (int ,struct g_geom*,int ,int *) ;

int
g_eli_access(struct g_provider *pp, int dr, int dw, int de)
{
 struct g_eli_softc *sc;
 struct g_geom *gp;

 gp = pp->geom;
 sc = gp->softc;

 if (dw > 0) {
  if (sc->sc_flags & G_ELI_FLAG_RO) {

   return (EROFS);
  }

  sc->sc_flags |= G_ELI_FLAG_WOPEN;
  return (0);
 }

 if (pp->acr + dr > 0 || pp->acw + dw > 0 || pp->ace + de > 0)
  return (0);




 if ((sc->sc_flags & G_ELI_FLAG_RW_DETACH) ||
     (sc->sc_flags & G_ELI_FLAG_WOPEN)) {
  g_post_event(g_eli_last_close, gp, M_WAITOK, ((void*)0));
 }
 return (0);
}
