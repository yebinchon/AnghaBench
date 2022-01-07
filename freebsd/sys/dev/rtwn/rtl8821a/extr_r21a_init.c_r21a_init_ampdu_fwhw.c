
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;


 int R92C_FAST_EDCA_CTRL ;
 int R92C_FWHW_TXQ_CTRL ;
 int R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW ;
 int rtwn_write_1 (struct rtwn_softc*,int ,int ) ;
 int rtwn_write_4 (struct rtwn_softc*,int ,int) ;

void
r21a_init_ampdu_fwhw(struct rtwn_softc *sc)
{
 rtwn_write_1(sc, R92C_FWHW_TXQ_CTRL,
     R92C_FWHW_TXQ_CTRL_AMPDU_RTY_NEW);
 rtwn_write_4(sc, R92C_FAST_EDCA_CTRL, 0x03087777);
}
