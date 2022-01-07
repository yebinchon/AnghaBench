
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int rcr; } ;


 int R92C_RCR_AB ;
 int R92C_RCR_AM ;
 int R92C_RCR_APM ;
 int R92C_RCR_APP_ICV ;
 int R92C_RCR_APP_MIC ;
 int R92C_RCR_APP_PHYSTS ;
 int R92C_RCR_HTC_LOC_CTRL ;
 int R92C_RXFLTMAP1 ;
 int R92C_RXFLTMAP2 ;
 int RTWN_ASSERT_LOCKED (struct rtwn_softc*) ;
 int rtwn_rxfilter_update (struct rtwn_softc*) ;
 int rtwn_set_multi (struct rtwn_softc*) ;
 int rtwn_write_2 (struct rtwn_softc*,int ,int) ;

void
rtwn_rxfilter_init(struct rtwn_softc *sc)
{

 RTWN_ASSERT_LOCKED(sc);


 rtwn_set_multi(sc);


 rtwn_write_2(sc, R92C_RXFLTMAP1, 0x0000);


 rtwn_write_2(sc, R92C_RXFLTMAP2, 0x0000);


 sc->rcr |= R92C_RCR_AM | R92C_RCR_AB | R92C_RCR_APM |
     R92C_RCR_HTC_LOC_CTRL | R92C_RCR_APP_PHYSTS |
     R92C_RCR_APP_ICV | R92C_RCR_APP_MIC;


 rtwn_rxfilter_update(sc);
}
