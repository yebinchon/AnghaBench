
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct rt2860_softc {int dummy; } ;


 int RAL_WRITE (struct rt2860_softc*,int ,int const) ;
 int RT2860_MAC_BSSID_DW0 ;
 int RT2860_MAC_BSSID_DW1 ;

__attribute__((used)) static void
rt2860_set_bssid(struct rt2860_softc *sc, const uint8_t *bssid)
{
 RAL_WRITE(sc, RT2860_MAC_BSSID_DW0,
     bssid[0] | bssid[1] << 8 | bssid[2] << 16 | bssid[3] << 24);
 RAL_WRITE(sc, RT2860_MAC_BSSID_DW1,
     bssid[4] | bssid[5] << 8);
}
