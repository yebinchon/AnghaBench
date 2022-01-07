
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int IEEE80211_OFDM_PLCP_LEN_MASK ;
 int IEEE80211_OFDM_PLCP_RATE_MASK ;
 int IEEE80211_T_OFDM ;
 int __SHIFTIN (int,int ) ;
 int htole32 (int) ;
 int ieee80211_rate2plcp (int ,int ) ;

__attribute__((used)) static __inline void
bwi_ofdm_plcp_header(uint32_t *plcp0, int pkt_len, uint8_t rate)
{
 uint32_t plcp;

 plcp = __SHIFTIN(ieee80211_rate2plcp(rate, IEEE80211_T_OFDM),
      IEEE80211_OFDM_PLCP_RATE_MASK) |
        __SHIFTIN(pkt_len, IEEE80211_OFDM_PLCP_LEN_MASK);
 *plcp0 = htole32(plcp);
}
