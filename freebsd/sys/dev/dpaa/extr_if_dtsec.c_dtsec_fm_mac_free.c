
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtsec_softc {int * sc_mach; } ;


 int FM_MAC_Disable (int *,int ) ;
 int FM_MAC_Free (int *) ;
 int e_COMM_MODE_RX_AND_TX ;

__attribute__((used)) static void
dtsec_fm_mac_free(struct dtsec_softc *sc)
{
 if (sc->sc_mach == ((void*)0))
  return;

 FM_MAC_Disable(sc->sc_mach, e_COMM_MODE_RX_AND_TX);
 FM_MAC_Free(sc->sc_mach);
 sc->sc_mach = ((void*)0);
}
