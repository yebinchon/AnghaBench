
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct run_softc {int dummy; } ;


 int RT2860_MAC_BSSID_DW0 ;
 int RT2860_MAC_BSSID_DW1 ;
 int run_write (struct run_softc*,int ,int const) ;

__attribute__((used)) static void
run_set_bssid(struct run_softc *sc, const uint8_t *bssid)
{
 run_write(sc, RT2860_MAC_BSSID_DW0,
     bssid[0] | bssid[1] << 8 | bssid[2] << 16 | bssid[3] << 24);
 run_write(sc, RT2860_MAC_BSSID_DW1,
     bssid[4] | bssid[5] << 8);
}
