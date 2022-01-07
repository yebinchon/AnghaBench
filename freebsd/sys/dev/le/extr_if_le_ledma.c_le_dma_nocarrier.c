
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct le_dma_softc {int sc_dma; } ;
struct TYPE_2__ {int ifm_media; } ;
struct lance_softc {int sc_ifp; TYPE_1__ sc_media; } ;


 int E_TP_AUI ;



 int IFM_SUBTYPE (int ) ;
 int L64854_GCSR (int ) ;
 int if_printf (int ,char*) ;
 int le_dma_setaui (struct lance_softc*) ;
 int le_dma_setutp (struct lance_softc*) ;

__attribute__((used)) static void
le_dma_nocarrier(struct lance_softc *sc)
{
 struct le_dma_softc *lesc = (struct le_dma_softc *)sc;






 if (L64854_GCSR(lesc->sc_dma) & E_TP_AUI) {
  switch (IFM_SUBTYPE(sc->sc_media.ifm_media)) {
  case 130:
  case 128:
   if_printf(sc->sc_ifp, "lost carrier on UTP port, "
       "switching to AUI port\n");
   le_dma_setaui(sc);
  }
 } else {
  switch (IFM_SUBTYPE(sc->sc_media.ifm_media)) {
  case 129:
  case 128:
   if_printf(sc->sc_ifp, "lost carrier on AUI port, "
       "switching to UTP port\n");
   le_dma_setutp(sc);
  }
 }
}
