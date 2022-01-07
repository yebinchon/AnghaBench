
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211com {TYPE_1__* ic_curchan; struct bwn_softc* ic_softc; } ;
struct bwn_softc {scalar_t__ sc_rf_enabled; int sc_dev; struct bwn_mac* sc_curmac; } ;
struct bwn_phy {int chan; int txpower; scalar_t__ rf_on; int (* set_antenna ) (struct bwn_mac*,int ) ;} ;
struct bwn_mac {int mac_flags; struct bwn_phy mac_phy; } ;
struct TYPE_3__ {scalar_t__ ic_maxpower; } ;


 int BWN_ANT_DEFAULT ;
 int BWN_LOCK (struct bwn_softc*) ;
 int BWN_MAC_FLAG_RADIO_ON ;
 int BWN_RETRY_LONG ;
 int BWN_RETRY_SHORT ;
 int BWN_TXPWR_IGNORE_TIME ;
 int BWN_TXPWR_IGNORE_TSSI ;
 int BWN_UNLOCK (struct bwn_softc*) ;
 int bwn_mac_enable (struct bwn_mac*) ;
 int bwn_mac_suspend (struct bwn_mac*) ;
 int bwn_phy_txpower_check (struct bwn_mac*,int) ;
 int bwn_rf_turnoff (struct bwn_mac*) ;
 int bwn_rf_turnon (struct bwn_mac*) ;
 int bwn_set_txantenna (struct bwn_mac*,int ) ;
 int bwn_set_txretry (struct bwn_mac*,int ,int ) ;
 int bwn_switch_band (struct bwn_softc*,TYPE_1__*) ;
 int bwn_switch_channel (struct bwn_mac*,int) ;
 int device_printf (int ,char*) ;
 int ieee80211_chan2ieee (struct ieee80211com*,TYPE_1__*) ;
 int stub1 (struct bwn_mac*,int ) ;

__attribute__((used)) static void
bwn_set_channel(struct ieee80211com *ic)
{
 struct bwn_softc *sc = ic->ic_softc;
 struct bwn_mac *mac = sc->sc_curmac;
 struct bwn_phy *phy = &mac->mac_phy;
 int chan, error;

 BWN_LOCK(sc);

 error = bwn_switch_band(sc, ic->ic_curchan);
 if (error)
  goto fail;
 bwn_mac_suspend(mac);
 bwn_set_txretry(mac, BWN_RETRY_SHORT, BWN_RETRY_LONG);
 chan = ieee80211_chan2ieee(ic, ic->ic_curchan);
 if (chan != phy->chan)
  bwn_switch_channel(mac, chan);


 if (ic->ic_curchan->ic_maxpower != 0 &&
     ic->ic_curchan->ic_maxpower != phy->txpower) {
  phy->txpower = ic->ic_curchan->ic_maxpower / 2;
  bwn_phy_txpower_check(mac, BWN_TXPWR_IGNORE_TIME |
      BWN_TXPWR_IGNORE_TSSI);
 }

 bwn_set_txantenna(mac, BWN_ANT_DEFAULT);
 if (phy->set_antenna)
  phy->set_antenna(mac, BWN_ANT_DEFAULT);

 if (sc->sc_rf_enabled != phy->rf_on) {
  if (sc->sc_rf_enabled) {
   bwn_rf_turnon(mac);
   if (!(mac->mac_flags & BWN_MAC_FLAG_RADIO_ON))
    device_printf(sc->sc_dev,
        "please turn on the RF switch\n");
  } else
   bwn_rf_turnoff(mac);
 }

 bwn_mac_enable(mac);

fail:
 BWN_UNLOCK(sc);
}
