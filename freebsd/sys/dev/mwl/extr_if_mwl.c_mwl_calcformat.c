
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ieee80211_node {int ni_htcap; int ni_capinfo; int ni_chan; } ;


 int EAGLE_TXD_ANTENNA ;
 int EAGLE_TXD_CHW_20 ;
 int EAGLE_TXD_CHW_40 ;
 int EAGLE_TXD_EXTCHAN_HI ;
 int EAGLE_TXD_EXTCHAN_LO ;
 int EAGLE_TXD_FORMAT_HT ;
 int EAGLE_TXD_FORMAT_LEGACY ;
 int EAGLE_TXD_GI_LONG ;
 int EAGLE_TXD_GI_SHORT ;
 int EAGLE_TXD_PREAMBLE_LONG ;
 int EAGLE_TXD_PREAMBLE_SHORT ;
 int EAGLE_TXD_RATE ;
 int IEEE80211_CAPINFO_SHORT_PREAMBLE ;
 int IEEE80211_HTCAP_SHORTGI20 ;
 int IEEE80211_HTCAP_SHORTGI40 ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (int ) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40D (int ) ;
 int IEEE80211_RATE_MCS ;
 int SM (int,int ) ;
 int mwl_cvtlegacyrate (int) ;

__attribute__((used)) static uint16_t
mwl_calcformat(uint8_t rate, const struct ieee80211_node *ni)
{
 uint16_t fmt;

 fmt = SM(3, EAGLE_TXD_ANTENNA)
     | (IEEE80211_IS_CHAN_HT40D(ni->ni_chan) ?
  EAGLE_TXD_EXTCHAN_LO : EAGLE_TXD_EXTCHAN_HI);
 if (rate & IEEE80211_RATE_MCS) {
  fmt |= EAGLE_TXD_FORMAT_HT

      | SM(rate, EAGLE_TXD_RATE);

  if (IEEE80211_IS_CHAN_HT40(ni->ni_chan)) {
   fmt |= EAGLE_TXD_CHW_40
       | (ni->ni_htcap & IEEE80211_HTCAP_SHORTGI40 ?
           EAGLE_TXD_GI_SHORT : EAGLE_TXD_GI_LONG);
  } else {
   fmt |= EAGLE_TXD_CHW_20
       | (ni->ni_htcap & IEEE80211_HTCAP_SHORTGI20 ?
           EAGLE_TXD_GI_SHORT : EAGLE_TXD_GI_LONG);
  }
 } else {
  fmt |= EAGLE_TXD_FORMAT_LEGACY
      | SM(mwl_cvtlegacyrate(rate), EAGLE_TXD_RATE)
      | EAGLE_TXD_CHW_20

      | (ni->ni_capinfo & IEEE80211_CAPINFO_SHORT_PREAMBLE ?
   EAGLE_TXD_PREAMBLE_SHORT : EAGLE_TXD_PREAMBLE_LONG);
 }
 return fmt;
}
