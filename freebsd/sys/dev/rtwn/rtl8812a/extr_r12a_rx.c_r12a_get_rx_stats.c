
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;
struct r92c_rx_stat {int rxdw4; int rxdw3; int rxdw1; int rxdw0; } ;
struct r12a_rx_phystat {int* cfosho; int phyw1; } ;
struct ieee80211_rx_stats {size_t c_rate; int r_flags; int c_ieee; int c_freq; int c_pktflags; int c_phytype; int c_width; } ;


 int IEEE80211_CHAN_2GHZ ;
 int IEEE80211_CHAN_5GHZ ;
 size_t IEEE80211_RATE_MCS ;
 int IEEE80211_RX_FP_11A ;
 int IEEE80211_RX_FP_11B ;
 int IEEE80211_RX_FP_11G ;
 int IEEE80211_RX_FP_11NA ;
 int IEEE80211_RX_FP_11NG ;
 int IEEE80211_RX_FW_20MHZ ;
 int IEEE80211_RX_FW_40MHZ ;
 int IEEE80211_RX_FW_80MHZ ;
 int IEEE80211_RX_F_AMPDU ;
 int IEEE80211_RX_F_AMPDU_MORE ;
 int IEEE80211_RX_F_CCK ;
 int IEEE80211_RX_F_HT ;
 int IEEE80211_RX_F_LDPC ;
 int IEEE80211_RX_F_OFDM ;
 int IEEE80211_RX_F_SHORTGI ;
 int IEEE80211_R_FREQ ;
 int IEEE80211_R_IEEE ;
 int MS (int,int ) ;
 int R12A_PHYW1_CHAN ;
 int R12A_RXDW1_AMPDU ;
 int R12A_RXDW3_RATE ;
 int R12A_RXDW4_BW ;



 int R12A_RXDW4_LDPC ;
 int R12A_RXDW4_SPLCP ;
 int R92C_RXDW0_PHYST ;
 scalar_t__ RTWN_RATE_IS_CCK (size_t) ;
 size_t RTWN_RIDX_HT_MCS (int ) ;
 size_t RTWN_RIDX_HT_MCS_SHIFT ;
 int ieee80211_ieee2mhz (int,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 size_t* ridx2rate ;

void
r12a_get_rx_stats(struct rtwn_softc *sc, struct ieee80211_rx_stats *rxs,
    const void *desc, const void *physt_ptr)
{
 const struct r92c_rx_stat *stat = desc;
 const struct r12a_rx_phystat *physt = physt_ptr;
 uint32_t rxdw0, rxdw1, rxdw3, rxdw4;
 uint8_t rate;

 rxdw0 = le32toh(stat->rxdw0);
 rxdw1 = le32toh(stat->rxdw1);
 rxdw3 = le32toh(stat->rxdw3);
 rxdw4 = le32toh(stat->rxdw4);
 rate = MS(rxdw3, R12A_RXDW3_RATE);


 if (rxdw4 & R12A_RXDW4_LDPC)
  rxs->c_pktflags |= IEEE80211_RX_F_LDPC;
 if (rxdw1 & R12A_RXDW1_AMPDU) {
  if (rxdw0 & R92C_RXDW0_PHYST)
   rxs->c_pktflags |= IEEE80211_RX_F_AMPDU;
  else
   rxs->c_pktflags |= IEEE80211_RX_F_AMPDU_MORE;
 }

 if ((rxdw4 & R12A_RXDW4_SPLCP) && rate >= RTWN_RIDX_HT_MCS(0))
  rxs->c_pktflags |= IEEE80211_RX_F_SHORTGI;

 switch (MS(rxdw4, R12A_RXDW4_BW)) {
 case 130:
  rxs->c_width = IEEE80211_RX_FW_20MHZ;
  break;
 case 129:
  rxs->c_width = IEEE80211_RX_FW_40MHZ;
  break;
 case 128:
  rxs->c_width = IEEE80211_RX_FW_80MHZ;
  break;
 default:
  break;
 }

 if (RTWN_RATE_IS_CCK(rate))
  rxs->c_phytype = IEEE80211_RX_FP_11B;
 else {
  int is5ghz;



  is5ghz = (physt->cfosho[2] != 0x01);

  if (rate < RTWN_RIDX_HT_MCS(0)) {
   if (is5ghz)
    rxs->c_phytype = IEEE80211_RX_FP_11A;
   else
    rxs->c_phytype = IEEE80211_RX_FP_11G;
  } else {
   if (is5ghz)
    rxs->c_phytype = IEEE80211_RX_FP_11NA;
   else
    rxs->c_phytype = IEEE80211_RX_FP_11NG;
  }
 }


 if (rate < RTWN_RIDX_HT_MCS(0)) {
  rxs->c_rate = ridx2rate[rate];
  if (RTWN_RATE_IS_CCK(rate))
   rxs->c_pktflags |= IEEE80211_RX_F_CCK;
  else
   rxs->c_pktflags |= IEEE80211_RX_F_OFDM;
 } else {

  rxs->c_rate =
      IEEE80211_RATE_MCS | (rate - RTWN_RIDX_HT_MCS_SHIFT);
  rxs->c_pktflags |= IEEE80211_RX_F_HT;
 }
}
