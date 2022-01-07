
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_intmask; } ;


 int IWM_CSR_GP_CNTRL ;
 int IWM_CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN ;
 int IWM_CSR_INT_BIT_RF_KILL ;
 int IWM_CSR_INT_MASK ;
 int IWM_SETBITS (struct iwm_softc*,int ,int ) ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;

void
iwm_enable_rfkill_int(struct iwm_softc *sc)
{
 sc->sc_intmask = IWM_CSR_INT_BIT_RF_KILL;
 IWM_WRITE(sc, IWM_CSR_INT_MASK, sc->sc_intmask);
 IWM_SETBITS(sc, IWM_CSR_GP_CNTRL,
     IWM_CSR_GP_CNTRL_REG_FLAG_RFKILL_WAKE_L1A_EN);
}
