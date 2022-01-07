
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct machfb_softc {int sc_bg_cache; } ;


 int DP_BKGD_CLR ;
 scalar_t__ MACHFB_CMAP_OFF ;
 int regw (struct machfb_softc*,int ,scalar_t__) ;
 int wait_for_fifo (struct machfb_softc*,int) ;

__attribute__((used)) static inline void
machfb_setbg(struct machfb_softc *sc, int bg)
{

 if (bg == sc->sc_bg_cache)
  return;
 sc->sc_bg_cache = bg;
 wait_for_fifo(sc, 1);
 regw(sc, DP_BKGD_CLR, bg + MACHFB_CMAP_OFF);
}
