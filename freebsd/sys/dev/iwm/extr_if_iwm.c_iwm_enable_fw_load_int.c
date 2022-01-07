
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwm_softc {int sc_intmask; } ;


 int IWM_CSR_INT_BIT_FH_TX ;
 int IWM_CSR_INT_MASK ;
 int IWM_DEBUG_INTR ;
 int IWM_DPRINTF (struct iwm_softc*,int ,char*) ;
 int IWM_WRITE (struct iwm_softc*,int ,int ) ;

__attribute__((used)) static inline void
iwm_enable_fw_load_int(struct iwm_softc *sc)
{
 IWM_DPRINTF(sc, IWM_DEBUG_INTR, "Enabling FW load interrupt\n");
 sc->sc_intmask = IWM_CSR_INT_BIT_FH_TX;
 IWM_WRITE(sc, IWM_CSR_INT_MASK, sc->sc_intmask);
}
