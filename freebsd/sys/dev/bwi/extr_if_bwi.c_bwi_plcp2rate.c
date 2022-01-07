
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef enum ieee80211_phytype { ____Placeholder_ieee80211_phytype } ieee80211_phytype ;


 int IEEE80211_OFDM_PLCP_RATE_MASK ;
 int ieee80211_plcp2rate (int,int) ;
 int le32toh (int const) ;

__attribute__((used)) static __inline uint8_t
bwi_plcp2rate(const uint32_t plcp0, enum ieee80211_phytype type)
{
 uint32_t plcp = le32toh(plcp0) & IEEE80211_OFDM_PLCP_RATE_MASK;
 return (ieee80211_plcp2rate(plcp, type));
}
