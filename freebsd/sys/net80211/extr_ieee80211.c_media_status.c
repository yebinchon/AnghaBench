
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;
typedef enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;


 scalar_t__ IEEE80211_IS_CHAN_A (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_ANYG (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_B (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_FHSS (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT20 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT40 (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HTA (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_HTG (struct ieee80211_channel const*) ;
 scalar_t__ IEEE80211_IS_CHAN_TURBO (struct ieee80211_channel const*) ;







 int IFM_FLAG0 ;
 int IFM_IEEE80211 ;
 int IFM_IEEE80211_11A ;
 int IFM_IEEE80211_11B ;
 int IFM_IEEE80211_11G ;
 int IFM_IEEE80211_11NA ;
 int IFM_IEEE80211_11NG ;
 int IFM_IEEE80211_ADHOC ;
 int IFM_IEEE80211_FH ;
 int IFM_IEEE80211_HOSTAP ;
 int IFM_IEEE80211_HT20 ;
 int IFM_IEEE80211_HT40 ;
 int IFM_IEEE80211_MBSS ;
 int IFM_IEEE80211_MONITOR ;
 int IFM_IEEE80211_TURBO ;
 int IFM_IEEE80211_WDS ;

__attribute__((used)) static int
media_status(enum ieee80211_opmode opmode, const struct ieee80211_channel *chan)
{
 int status;

 status = IFM_IEEE80211;
 switch (opmode) {
 case 129:
  break;
 case 132:
  status |= IFM_IEEE80211_ADHOC;
  break;
 case 133:
  status |= IFM_IEEE80211_HOSTAP;
  break;
 case 130:
  status |= IFM_IEEE80211_MONITOR;
  break;
 case 134:
  status |= IFM_IEEE80211_ADHOC | IFM_FLAG0;
  break;
 case 128:
  status |= IFM_IEEE80211_WDS;
  break;
 case 131:
  status |= IFM_IEEE80211_MBSS;
  break;
 }
 if (IEEE80211_IS_CHAN_HTA(chan)) {
  status |= IFM_IEEE80211_11NA;
 } else if (IEEE80211_IS_CHAN_HTG(chan)) {
  status |= IFM_IEEE80211_11NG;
 } else if (IEEE80211_IS_CHAN_A(chan)) {
  status |= IFM_IEEE80211_11A;
 } else if (IEEE80211_IS_CHAN_B(chan)) {
  status |= IFM_IEEE80211_11B;
 } else if (IEEE80211_IS_CHAN_ANYG(chan)) {
  status |= IFM_IEEE80211_11G;
 } else if (IEEE80211_IS_CHAN_FHSS(chan)) {
  status |= IFM_IEEE80211_FH;
 }


 if (IEEE80211_IS_CHAN_TURBO(chan))
  status |= IFM_IEEE80211_TURBO;






 return status;
}
