
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_s {int flags; int opencount; } ;
struct g_provider {scalar_t__ acr; scalar_t__ acw; scalar_t__ ace; TYPE_1__* geom; } ;
struct TYPE_2__ {struct md_s* softc; } ;


 int ENXIO ;
 int EROFS ;
 int MD_READONLY ;

__attribute__((used)) static int
g_md_access(struct g_provider *pp, int r, int w, int e)
{
 struct md_s *sc;

 sc = pp->geom->softc;
 if (sc == ((void*)0)) {
  if (r <= 0 && w <= 0 && e <= 0)
   return (0);
  return (ENXIO);
 }
 r += pp->acr;
 w += pp->acw;
 e += pp->ace;
 if ((sc->flags & MD_READONLY) != 0 && w > 0)
  return (EROFS);
 if ((pp->acr + pp->acw + pp->ace) == 0 && (r + w + e) > 0) {
  sc->opencount = 1;
 } else if ((pp->acr + pp->acw + pp->ace) > 0 && (r + w + e) == 0) {
  sc->opencount = 0;
 }
 return (0);
}
