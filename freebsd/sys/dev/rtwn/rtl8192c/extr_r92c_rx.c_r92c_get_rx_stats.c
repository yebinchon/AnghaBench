
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
struct rtwn_softc {int dummy; } ;
struct r92c_rx_stat {int rxdw3; int rxdw1; } ;
struct ieee80211_rx_stats {size_t c_rate; int c_pktflags; int c_phytype; int c_width; } ;


 size_t IEEE80211_RATE_MCS ;
 int IEEE80211_RX_FP_11B ;
 int IEEE80211_RX_FP_11G ;
 int IEEE80211_RX_FP_11NG ;
 int IEEE80211_RX_FW_20MHZ ;
 int IEEE80211_RX_FW_40MHZ ;
 int IEEE80211_RX_F_AMPDU ;
 int IEEE80211_RX_F_AMPDU_MORE ;
 int IEEE80211_RX_F_CCK ;
 int IEEE80211_RX_F_HT ;
 int IEEE80211_RX_F_OFDM ;
 int IEEE80211_RX_F_SHORTGI ;
 size_t MS (int,int ) ;
 int R92C_RXDW1_AMPDU ;
 int R92C_RXDW1_AMPDU_MORE ;
 int R92C_RXDW3_HT40 ;
 int R92C_RXDW3_RATE ;
 int R92C_RXDW3_SPLCP ;
 scalar_t__ RTWN_RATE_IS_CCK (size_t) ;
 size_t RTWN_RIDX_HT_MCS (int ) ;
 size_t RTWN_RIDX_HT_MCS_SHIFT ;
 int le32toh (int ) ;
 size_t* ridx2rate ;

void
r92c_get_rx_stats(struct rtwn_softc *sc, struct ieee80211_rx_stats *rxs,
    const void *desc, const void *physt_ptr)
{
 const struct r92c_rx_stat *stat = desc;
 uint32_t rxdw1, rxdw3;
 uint8_t rate;

 rxdw1 = le32toh(stat->rxdw1);
 rxdw3 = le32toh(stat->rxdw3);
 rate = MS(rxdw3, R92C_RXDW3_RATE);

 if (rxdw1 & R92C_RXDW1_AMPDU)
  rxs->c_pktflags |= IEEE80211_RX_F_AMPDU;
 else if (rxdw1 & R92C_RXDW1_AMPDU_MORE)
  rxs->c_pktflags |= IEEE80211_RX_F_AMPDU_MORE;
 if ((rxdw3 & R92C_RXDW3_SPLCP) && rate >= RTWN_RIDX_HT_MCS(0))
  rxs->c_pktflags |= IEEE80211_RX_F_SHORTGI;

 if (rxdw3 & R92C_RXDW3_HT40)
  rxs->c_width = IEEE80211_RX_FW_40MHZ;
 else
  rxs->c_width = IEEE80211_RX_FW_20MHZ;

 if (RTWN_RATE_IS_CCK(rate))
  rxs->c_phytype = IEEE80211_RX_FP_11B;
 else if (rate < RTWN_RIDX_HT_MCS(0))
  rxs->c_phytype = IEEE80211_RX_FP_11G;
 else
  rxs->c_phytype = IEEE80211_RX_FP_11NG;


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
