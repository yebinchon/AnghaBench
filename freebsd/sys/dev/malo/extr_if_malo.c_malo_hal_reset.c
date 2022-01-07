
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_curchan; } ;
struct malo_softc {int malo_txantenna; int malo_rxantenna; struct malo_hal* malo_mh; struct ieee80211com malo_ic; } ;
struct malo_hal {int dummy; } ;


 int MHA_ANTENNATYPE_RX ;
 int MHA_ANTENNATYPE_TX ;
 int MHP_AUTO_PREAMBLE ;
 int malo_chan_set (struct malo_softc*,int ) ;
 int malo_hal_set_rxtxdma (struct malo_softc*) ;
 int malo_hal_setantenna (struct malo_hal*,int ,int ) ;
 int malo_hal_setradio (struct malo_hal*,int,int ) ;

__attribute__((used)) static int
malo_hal_reset(struct malo_softc *sc)
{
 static int first = 0;
 struct ieee80211com *ic = &sc->malo_ic;
 struct malo_hal *mh = sc->malo_mh;

 if (first == 0) {





  malo_hal_set_rxtxdma(sc);
  first = 1;
 }

 malo_hal_setantenna(mh, MHA_ANTENNATYPE_RX, sc->malo_rxantenna);
 malo_hal_setantenna(mh, MHA_ANTENNATYPE_TX, sc->malo_txantenna);
 malo_hal_setradio(mh, 1, MHP_AUTO_PREAMBLE);
 malo_chan_set(sc, ic->ic_curchan);



 return 1;
}
