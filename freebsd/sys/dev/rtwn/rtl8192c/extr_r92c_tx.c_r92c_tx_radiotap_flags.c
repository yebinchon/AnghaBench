
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct r92c_tx_desc {int txdw4; int txdw5; } ;


 int IEEE80211_RADIOTAP_F_SHORTGI ;
 int IEEE80211_RADIOTAP_F_SHORTPRE ;
 int R92C_TXDW4_DATA_SHPRE ;
 int R92C_TXDW5_SGI ;
 int htole32 (int ) ;

uint8_t
r92c_tx_radiotap_flags(const void *buf)
{
 const struct r92c_tx_desc *txd = buf;
 uint8_t flags;

 flags = 0;
 if (txd->txdw4 & htole32(R92C_TXDW4_DATA_SHPRE))
  flags |= IEEE80211_RADIOTAP_F_SHORTPRE;
 if (txd->txdw5 & htole32(R92C_TXDW5_SGI))
  flags |= IEEE80211_RADIOTAP_F_SHORTGI;
 return (flags);
}
