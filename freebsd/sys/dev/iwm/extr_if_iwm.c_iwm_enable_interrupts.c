
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_intmask; } ;


 int IWM_CSR_INI_SET_MASK ;
 int IWM_CSR_INT_MASK ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;

__attribute__((used)) static void
iwm_enable_interrupts(struct iwm_softc *sc)
{
 sc->sc_intmask = IWM_CSR_INI_SET_MASK;
 IWM_WRITE(sc, IWM_CSR_INT_MASK, sc->sc_intmask);
}
