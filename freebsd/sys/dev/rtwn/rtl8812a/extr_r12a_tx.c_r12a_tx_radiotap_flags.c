
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r12a_tx_desc {int txdw5; int txdw4; } ;


 int IEEE80211_RADIOTAP_F_SHORTGI ;
 int IEEE80211_RADIOTAP_F_SHORTPRE ;
 int MS (int ,int ) ;
 int R12A_TXDW4_DATARATE ;
 int R12A_TXDW5_DATA_SHORT ;
 scalar_t__ RTWN_RATE_IS_CCK (int ) ;
 int htole32 (int ) ;
 int le32toh (int ) ;

uint8_t
r12a_tx_radiotap_flags(const void *buf)
{
 const struct r12a_tx_desc *txd = buf;
 uint8_t flags, rate;

 if (!(txd->txdw5 & htole32(R12A_TXDW5_DATA_SHORT)))
  return (0);

 rate = MS(le32toh(txd->txdw4), R12A_TXDW4_DATARATE);
 if (RTWN_RATE_IS_CCK(rate))
  flags = IEEE80211_RADIOTAP_F_SHORTPRE;
 else
  flags = IEEE80211_RADIOTAP_F_SHORTGI;
 return (flags);
}
