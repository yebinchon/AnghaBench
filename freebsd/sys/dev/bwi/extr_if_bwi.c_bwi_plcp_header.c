
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_rate_table {int dummy; } ;
typedef enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;


 int IEEE80211_T_DS ;
 int IEEE80211_T_OFDM ;
 int bwi_ds_plcp_header (void*,int,int ) ;
 int bwi_ofdm_plcp_header (void*,int,int ) ;
 int ieee80211_rate2phytype (struct ieee80211_rate_table const*,int ) ;
 int panic (char*,int) ;

__attribute__((used)) static __inline void
bwi_plcp_header(const struct ieee80211_rate_table *rt,
 void *plcp, int pkt_len, uint8_t rate)
{
 enum ieee80211_phytype modtype;




 modtype = ieee80211_rate2phytype(rt, rate);
 if (modtype == IEEE80211_T_OFDM)
  bwi_ofdm_plcp_header(plcp, pkt_len, rate);
 else if (modtype == IEEE80211_T_DS)
  bwi_ds_plcp_header(plcp, pkt_len, rate);
 else
  panic("unsupport modulation type %u\n", modtype);
}
