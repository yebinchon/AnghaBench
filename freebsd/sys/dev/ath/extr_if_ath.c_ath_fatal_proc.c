
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_softc {int sc_dev; int sc_ah; scalar_t__ sc_invalid; } ;


 int ATH_RESET_NOLOSS ;
 int KASSERT (int,char*) ;
 scalar_t__ ath_hal_getfatalstate (int ,void**,int*) ;
 int ath_reset (struct ath_softc*,int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static void
ath_fatal_proc(void *arg, int pending)
{
 struct ath_softc *sc = arg;
 u_int32_t *state;
 u_int32_t len;
 void *sp;

 if (sc->sc_invalid)
  return;

 device_printf(sc->sc_dev, "hardware error; resetting\n");





 if (ath_hal_getfatalstate(sc->sc_ah, &sp, &len)) {
  KASSERT(len >= 6*sizeof(u_int32_t), ("len %u bytes", len));
  state = sp;
  device_printf(sc->sc_dev,
      "0x%08x 0x%08x 0x%08x, 0x%08x 0x%08x 0x%08x\n", state[0],
      state[1] , state[2], state[3], state[4], state[5]);
 }
 ath_reset(sc, ATH_RESET_NOLOSS);
}
