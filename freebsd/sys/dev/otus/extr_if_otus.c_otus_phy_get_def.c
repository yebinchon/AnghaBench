
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct otus_softc {scalar_t__* phy_vals; } ;


 scalar_t__ AR_PHY (int ) ;
 int * ar5416_phy_regs ;
 int nitems (int *) ;

uint32_t
otus_phy_get_def(struct otus_softc *sc, uint32_t reg)
{
 int i;

 for (i = 0; i < nitems(ar5416_phy_regs); i++)
  if (AR_PHY(ar5416_phy_regs[i]) == reg)
   return sc->phy_vals[i];
 return 0;
}
