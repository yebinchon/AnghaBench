
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r92c_rx_stat {int rxdw3; } ;


 int IEEE80211_RADIOTAP_F_SHORTGI ;
 int IEEE80211_RADIOTAP_F_SHORTPRE ;
 int MS (int ,int ) ;
 int R92C_RXDW3_RATE ;
 int R92C_RXDW3_SPLCP ;
 scalar_t__ RTWN_RATE_IS_CCK (int ) ;
 int htole32 (int ) ;
 int le32toh (int) ;

uint8_t
r92c_rx_radiotap_flags(const void *buf)
{
 const struct r92c_rx_stat *stat = buf;
 uint8_t flags, rate;

 if (!(stat->rxdw3 & htole32(R92C_RXDW3_SPLCP)))
  return (0);

 rate = MS(le32toh(stat->rxdw3), R92C_RXDW3_RATE);
 if (RTWN_RATE_IS_CCK(rate))
  flags = IEEE80211_RADIOTAP_F_SHORTPRE;
 else
  flags = IEEE80211_RADIOTAP_F_SHORTGI;
 return (flags);
}
