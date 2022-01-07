
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creator_softc {int sc_bg_cache; } ;


 int FFB_FBC ;
 int FFB_FBC_BG ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int) ;
 int creator_ras_fifo_wait (struct creator_softc*,int) ;
 int creator_ras_wait (struct creator_softc*) ;

__attribute__((used)) static inline void
creator_ras_setbg(struct creator_softc *sc, int bg)
{

 if (bg == sc->sc_bg_cache)
  return;
 sc->sc_bg_cache = bg;
 creator_ras_fifo_wait(sc, 1);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_BG, bg);
 creator_ras_wait(sc);
}
