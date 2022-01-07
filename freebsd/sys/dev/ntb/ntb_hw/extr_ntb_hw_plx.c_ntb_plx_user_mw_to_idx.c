
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {int split; } ;



__attribute__((used)) static unsigned
ntb_plx_user_mw_to_idx(struct ntb_plx_softc *sc, unsigned uidx, unsigned *sp)
{
 unsigned t;

 t = 1 << sc->split;
 if (uidx < t) {
  *sp = uidx;
  return (0);
 }
 *sp = 0;
 return (uidx - (t - 1));
}
