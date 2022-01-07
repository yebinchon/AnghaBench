
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211com {int ic_curchan; } ;
struct bwn_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct bwn_phy {int (* get_default_chan ) (struct bwn_mac*) ;int (* switch_channel ) (struct bwn_mac*,int) ;int chan; } ;
struct bwn_mac {struct bwn_phy mac_phy; struct bwn_softc* mac_sc; } ;


 int BWN_SHARED ;
 int BWN_SHARED_CHAN ;
 int DELAY (int) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (int ) ;
 int bwn_shm_read_2 (struct bwn_mac*,int ,int ) ;
 int bwn_shm_write_2 (struct bwn_mac*,int ,int ,int) ;
 int device_printf (int ,char*) ;
 int stub1 (struct bwn_mac*) ;
 int stub2 (struct bwn_mac*,int) ;

int
bwn_switch_channel(struct bwn_mac *mac, int chan)
{
 struct bwn_phy *phy = &(mac->mac_phy);
 struct bwn_softc *sc = mac->mac_sc;
 struct ieee80211com *ic = &sc->sc_ic;
 uint16_t channelcookie, savedcookie;
 int error;

 if (chan == 0xffff)
  chan = phy->get_default_chan(mac);

 channelcookie = chan;
 if (IEEE80211_IS_CHAN_5GHZ(ic->ic_curchan))
  channelcookie |= 0x100;
 savedcookie = bwn_shm_read_2(mac, BWN_SHARED, BWN_SHARED_CHAN);
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_CHAN, channelcookie);
 error = phy->switch_channel(mac, chan);
 if (error)
  goto fail;

 mac->mac_phy.chan = chan;
 DELAY(8000);
 return (0);
fail:
 device_printf(sc->sc_dev, "failed to switch channel\n");
 bwn_shm_write_2(mac, BWN_SHARED, BWN_SHARED_CHAN, savedcookie);
 return (error);
}
