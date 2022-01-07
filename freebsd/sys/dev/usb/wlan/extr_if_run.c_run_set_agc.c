
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct run_softc {int mac_ver; } ;


 int run_bbp_read (struct run_softc*,int,int*) ;
 int run_bbp_write (struct run_softc*,int,int) ;

__attribute__((used)) static void
run_set_agc(struct run_softc *sc, uint8_t agc)
{
 uint8_t bbp;

 if (sc->mac_ver == 0x3572) {
  run_bbp_read(sc, 27, &bbp);
  bbp &= ~(0x3 << 5);
  run_bbp_write(sc, 27, bbp | 0 << 5);
  run_bbp_write(sc, 66, agc);
  run_bbp_write(sc, 27, bbp | 1 << 5);
  run_bbp_write(sc, 66, agc);
 } else
  run_bbp_write(sc, 66, agc);
}
