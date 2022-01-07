
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int ic_macaddr; } ;
struct bwn_softc {int sc_bssid; TYPE_1__ sc_ic; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BWN_MACFILTER_BSSID ;
 int IEEE80211_ADDR_LEN ;
 int N (scalar_t__*) ;
 int bwn_mac_setfilter (struct bwn_mac*,int ,int ) ;
 int bwn_ram_write (struct bwn_mac*,int,int) ;
 int memcpy (scalar_t__*,int ,int) ;

__attribute__((used)) static void
bwn_mac_write_bssid(struct bwn_mac *mac)
{
 struct bwn_softc *sc = mac->mac_sc;
 uint32_t tmp;
 int i;
 uint8_t mac_bssid[IEEE80211_ADDR_LEN * 2];

 bwn_mac_setfilter(mac, BWN_MACFILTER_BSSID, sc->sc_bssid);
 memcpy(mac_bssid, sc->sc_ic.ic_macaddr, IEEE80211_ADDR_LEN);
 memcpy(mac_bssid + IEEE80211_ADDR_LEN, sc->sc_bssid,
     IEEE80211_ADDR_LEN);

 for (i = 0; i < N(mac_bssid); i += sizeof(uint32_t)) {
  tmp = (uint32_t) (mac_bssid[i + 0]);
  tmp |= (uint32_t) (mac_bssid[i + 1]) << 8;
  tmp |= (uint32_t) (mac_bssid[i + 2]) << 16;
  tmp |= (uint32_t) (mac_bssid[i + 3]) << 24;
  bwn_ram_write(mac, 0x20 + i, tmp);
 }
}
