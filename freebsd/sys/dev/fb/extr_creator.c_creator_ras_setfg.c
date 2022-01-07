
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct creator_softc {int sc_fg_cache; } ;


 int FFB_FBC ;
 int FFB_FBC_FG ;
 int FFB_WRITE (struct creator_softc*,int ,int ,int) ;
 int creator_ras_fifo_wait (struct creator_softc*,int) ;
 int creator_ras_wait (struct creator_softc*) ;

__attribute__((used)) static inline void
creator_ras_setfg(struct creator_softc *sc, int fg)
{

 if (fg == sc->sc_fg_cache)
  return;
 sc->sc_fg_cache = fg;
 creator_ras_fifo_wait(sc, 1);
 FFB_WRITE(sc, FFB_FBC, FFB_FBC_FG, fg);
 creator_ras_wait(sc);
}
