
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
struct ath_softc {int sc_ah; } ;


 int HAL_BT_COEX_STOMP_ALL ;
 int ath_btcoex_mci_update_wlan_channels (struct ath_softc*) ;
 int ath_hal_btcoex_set_weights (int ,int ) ;

int
ath_btcoex_mci_enable(struct ath_softc *sc,
    const struct ieee80211_channel *chan)
{
 ath_hal_btcoex_set_weights(sc->sc_ah, HAL_BT_COEX_STOMP_ALL);





 ath_btcoex_mci_update_wlan_channels(sc);

 return (0);
}
