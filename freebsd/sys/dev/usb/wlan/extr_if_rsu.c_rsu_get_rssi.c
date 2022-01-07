
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct rsu_softc {int dummy; } ;
struct r92s_rx_phystat {int phydw1; } ;
struct r92s_rx_cck {int agc_rpt; } ;
typedef int int8_t ;


 int le32toh (int ) ;

__attribute__((used)) static int8_t
rsu_get_rssi(struct rsu_softc *sc, int rate, void *physt)
{
 static const int8_t cckoff[] = { 14, -2, -20, -40 };
 struct r92s_rx_phystat *phy;
 struct r92s_rx_cck *cck;
 uint8_t rpt;
 int8_t rssi;

 if (rate <= 3) {
  cck = (struct r92s_rx_cck *)physt;
  rpt = (cck->agc_rpt >> 6) & 0x3;
  rssi = cck->agc_rpt & 0x3e;
  rssi = cckoff[rpt] - rssi;
 } else {
  phy = (struct r92s_rx_phystat *)physt;
  rssi = ((le32toh(phy->phydw1) >> 1) & 0x7f) - 106;
 }
 return (rssi);
}
