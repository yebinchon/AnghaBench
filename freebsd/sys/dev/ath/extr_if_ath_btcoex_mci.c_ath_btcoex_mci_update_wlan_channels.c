
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ieee80211com {struct ieee80211_channel* ic_curchan; } ;
struct ieee80211_channel {scalar_t__ ic_freq; } ;
struct ath_softc {int sc_ah; struct ieee80211com sc_ic; } ;
typedef scalar_t__ int32_t ;


 int ATH_DEBUG_BTCOEX ;
 int DPRINTF (struct ath_softc*,int ,char*,...) ;
 int HAL_MCI_STATE_SEND_WLAN_CHANNELS ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40D (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40U (struct ieee80211_channel*) ;
 int MCI_GPM_CLR_CHANNEL_BIT (int*,scalar_t__) ;
 scalar_t__ MCI_NUM_BT_CHANNELS ;
 int ath_hal_btcoex_mci_state (int ,int ,int*) ;

__attribute__((used)) static void
ath_btcoex_mci_update_wlan_channels(struct ath_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct ieee80211_channel *chan = ic->ic_curchan;
 uint32_t channel_info[4] =
     { 0x00000000, 0xffffffff, 0xffffffff, 0x7fffffff };
 int32_t wl_chan, bt_chan, bt_start = 0, bt_end = 79;


 if (IEEE80211_IS_CHAN_2GHZ(chan)) {
  wl_chan = chan->ic_freq - 2402;
  if (IEEE80211_IS_CHAN_HT40U(chan)) {
   bt_start = wl_chan - 10;
   bt_end = wl_chan + 30;
  } else if (IEEE80211_IS_CHAN_HT40D(chan)) {
   bt_start = wl_chan - 30;
   bt_end = wl_chan + 10;
  } else {

   bt_start = wl_chan - 10;
   bt_end = wl_chan + 10;
  }

  bt_start -= 7;
  bt_end += 7;

  if (bt_start < 0) {
   bt_start = 0;
  }
  if (bt_end > MCI_NUM_BT_CHANNELS) {
   bt_end = MCI_NUM_BT_CHANNELS;
  }
  DPRINTF(sc, ATH_DEBUG_BTCOEX, "(MCI) WLAN use channel %d\n",
      chan->ic_freq);
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) mask BT channel %d - %d\n", bt_start, bt_end);
  for (bt_chan = bt_start; bt_chan < bt_end; bt_chan++) {
   MCI_GPM_CLR_CHANNEL_BIT(&channel_info[0], bt_chan);
  }
 } else {
  DPRINTF(sc, ATH_DEBUG_BTCOEX,
      "(MCI) WLAN not use any 2G channel, unmask all for BT\n");
 }
 ath_hal_btcoex_mci_state(sc->sc_ah, HAL_MCI_STATE_SEND_WLAN_CHANNELS,
     &channel_info[0]);
}
