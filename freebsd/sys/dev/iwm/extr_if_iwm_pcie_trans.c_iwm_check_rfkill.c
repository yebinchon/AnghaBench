
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int sc_flags; } ;


 int IWM_CSR_GP_CNTRL ;
 int IWM_CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ;
 int IWM_FLAG_RFKILL ;
 int IWM_READ (struct iwm_softc*,int ) ;

int
iwm_check_rfkill(struct iwm_softc *sc)
{
 uint32_t v;
 int rv;
 v = IWM_READ(sc, IWM_CSR_GP_CNTRL);
 rv = (v & IWM_CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW) == 0;
 if (rv) {
  sc->sc_flags |= IWM_FLAG_RFKILL;
 } else {
  sc->sc_flags &= ~IWM_FLAG_RFKILL;
 }

 return rv;
}
