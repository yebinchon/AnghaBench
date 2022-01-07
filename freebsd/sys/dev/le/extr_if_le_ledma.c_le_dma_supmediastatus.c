
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lsi64854_softc {int dummy; } ;
struct le_dma_softc {struct lsi64854_softc* sc_dma; } ;
struct lance_softc {int dummy; } ;
struct ifmediareq {void* ifm_active; } ;


 int E_TP_AUI ;
 int IFM_10_5 ;
 int IFM_10_T ;
 int IFM_ETHER ;
 void* IFM_MAKEWORD (int ,int ,int ,int ) ;
 int L64854_GCSR (struct lsi64854_softc*) ;

__attribute__((used)) static void
le_dma_supmediastatus(struct lance_softc *sc, struct ifmediareq *ifmr)
{
 struct lsi64854_softc *dma = ((struct le_dma_softc *)sc)->sc_dma;




 if (L64854_GCSR(dma) & E_TP_AUI)
  ifmr->ifm_active = IFM_MAKEWORD(IFM_ETHER, IFM_10_T, 0, 0);
 else
  ifmr->ifm_active = IFM_MAKEWORD(IFM_ETHER, IFM_10_5, 0, 0);
}
