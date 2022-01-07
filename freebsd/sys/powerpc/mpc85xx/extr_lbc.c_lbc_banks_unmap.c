
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbc_softc {TYPE_1__* sc_range; } ;
struct TYPE_2__ {scalar_t__ size; int addr; int kva; } ;


 int LBC_DEV_MAX ;
 int OCP85XX_TGTIF_LBC ;
 int law_disable (int ,int ,scalar_t__) ;
 int pmap_unmapdev (int ,scalar_t__) ;

__attribute__((used)) static void
lbc_banks_unmap(struct lbc_softc *sc)
{
 int r;

 r = 0;
 while (r < LBC_DEV_MAX) {
  if (sc->sc_range[r].size == 0)
   return;

  pmap_unmapdev(sc->sc_range[r].kva, sc->sc_range[r].size);
  law_disable(OCP85XX_TGTIF_LBC, sc->sc_range[r].addr,
      sc->sc_range[r].size);
  r++;
 }
}
