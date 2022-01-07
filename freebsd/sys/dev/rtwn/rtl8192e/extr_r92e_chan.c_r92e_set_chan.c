
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rtwn_softc {int nrxchains; struct r92e_softc* sc_priv; } ;
struct r92e_softc {int * rf_chnlbw; } ;
struct ieee80211_channel {int dummy; } ;


 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel*) ;
 int IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel*) ;
 int R92C_RF_CHNLBW ;
 int R92C_RF_CHNLBW_CHNL ;
 int RW (int ,int ,int ) ;
 int r92e_set_bw20 (struct rtwn_softc*,int ) ;
 int r92e_set_bw40 (struct rtwn_softc*,int ,int ) ;
 int r92e_set_txpower (struct rtwn_softc*,struct ieee80211_channel*) ;
 int rtwn_chan2centieee (struct ieee80211_channel*) ;
 int rtwn_rf_write (struct rtwn_softc*,int,int ,int ) ;

void
r92e_set_chan(struct rtwn_softc *sc, struct ieee80211_channel *c)
{
 struct r92e_softc *rs = sc->sc_priv;
 u_int chan;
 int i;

 chan = rtwn_chan2centieee(c);

 for (i = 0; i < sc->nrxchains; i++) {
  rtwn_rf_write(sc, i, R92C_RF_CHNLBW,
      RW(rs->rf_chnlbw[0], R92C_RF_CHNLBW_CHNL, chan));
 }

 if (IEEE80211_IS_CHAN_HT40(c))
  r92e_set_bw40(sc, chan, IEEE80211_IS_CHAN_HT40U(c));
 else
  r92e_set_bw20(sc, chan);


 r92e_set_txpower(sc, c);
}
