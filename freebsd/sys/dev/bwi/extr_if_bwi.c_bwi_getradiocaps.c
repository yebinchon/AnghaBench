
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211com {struct bwi_softc* ic_softc; } ;
struct ieee80211_channel {int dummy; } ;
struct bwi_softc {int sc_dev; struct bwi_mac* sc_mac; } ;
struct bwi_phy {int phy_mode; } ;
struct bwi_mac {struct bwi_phy mac_phy; } ;
typedef int bands ;





 int IEEE80211_MODE_BYTES ;
 int device_printf (int ,char*) ;
 int ieee80211_add_channels_default_2ghz (struct ieee80211_channel*,int,int*,int *,int ) ;
 int memset (int *,int ,int) ;
 int panic (char*,int) ;
 int setbit (int *,int const) ;

__attribute__((used)) static void
bwi_getradiocaps(struct ieee80211com *ic,
    int maxchans, int *nchans, struct ieee80211_channel chans[])
{
 struct bwi_softc *sc = ic->ic_softc;
 struct bwi_mac *mac;
 struct bwi_phy *phy;
 uint8_t bands[IEEE80211_MODE_BYTES];





 mac = &sc->sc_mac[0];
 phy = &mac->mac_phy;

 memset(bands, 0, sizeof(bands));
 switch (phy->phy_mode) {
 case 128:
  setbit(bands, 128);

 case 129:
  setbit(bands, 129);
  break;
 case 130:

  setbit(bands, 130);
  device_printf(sc->sc_dev, "no 11a support\n");
  return;
 default:
  panic("unknown phymode %d\n", phy->phy_mode);
 }

 ieee80211_add_channels_default_2ghz(chans, maxchans, nchans, bands, 0);
}
