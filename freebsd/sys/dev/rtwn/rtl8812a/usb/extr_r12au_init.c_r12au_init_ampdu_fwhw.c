
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_FWHW_TXQ_CTRL ;
 int R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW ;
 int rtwn_setbits_1 (struct rtwn_softc*,int ,int ,int ) ;

void
r12au_init_ampdu_fwhw(struct rtwn_softc *sc)
{
 rtwn_setbits_1(sc, R92C_FWHW_TXQ_CTRL,
     R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW, 0);
}
