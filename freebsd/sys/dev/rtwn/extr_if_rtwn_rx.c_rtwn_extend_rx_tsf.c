
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;
struct rtwn_rx_stat_common {int tsf_low; int rxdw3; } ;


 int MS (int,int ) ;
 int RTWN_RXDW3_BSSID01_FIT ;
 int abs (int ) ;
 int le32toh (int ) ;
 int rtwn_get_tsf_high (struct rtwn_softc*,int) ;
 int rtwn_get_tsf_low (struct rtwn_softc*,int) ;

__attribute__((used)) static uint64_t
rtwn_extend_rx_tsf(struct rtwn_softc *sc,
    const struct rtwn_rx_stat_common *stat)
{
 uint64_t tsft;
 uint32_t rxdw3, tsfl, tsfl_curr;
 int id;

 rxdw3 = le32toh(stat->rxdw3);
 tsfl = le32toh(stat->tsf_low);
 id = MS(rxdw3, RTWN_RXDW3_BSSID01_FIT);

 switch (id) {
 case 1:
 case 2:
  id >>= 1;
  tsfl_curr = rtwn_get_tsf_low(sc, id);
  break;
 default:
 {
  uint32_t tsfl0, tsfl1;

  tsfl0 = rtwn_get_tsf_low(sc, 0);
  tsfl1 = rtwn_get_tsf_low(sc, 1);

  if (abs(tsfl0 - tsfl) < abs(tsfl1 - tsfl)) {
   id = 0;
   tsfl_curr = tsfl0;
  } else {
   id = 1;
   tsfl_curr = tsfl1;
  }
  break;
 }
 }

 tsft = rtwn_get_tsf_high(sc, id);
 if (tsfl > tsfl_curr && tsfl > 0xffff0000)
  tsft--;
 tsft <<= 32;
 tsft += tsfl;

 return (tsft);
}
