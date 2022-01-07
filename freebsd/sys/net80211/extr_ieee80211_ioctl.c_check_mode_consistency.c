
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int dummy; } ;


 struct ieee80211_channel const* IEEE80211_CHAN_ANYC ;
 int IEEE80211_IS_CHAN_A (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_ANYG (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_B (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_HT (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_HTA (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_HTG (struct ieee80211_channel const*) ;
 int IEEE80211_IS_CHAN_STURBO (struct ieee80211_channel const*) ;






 int KASSERT (int,char*) ;

__attribute__((used)) static int
check_mode_consistency(const struct ieee80211_channel *c, int mode)
{
 KASSERT(c != IEEE80211_CHAN_ANYC, ("oops, no channel"));

 switch (mode) {
 case 132:
  return (IEEE80211_IS_CHAN_B(c));
 case 131:
  return (IEEE80211_IS_CHAN_ANYG(c) && !IEEE80211_IS_CHAN_HT(c));
 case 133:
  return (IEEE80211_IS_CHAN_A(c) && !IEEE80211_IS_CHAN_HT(c));
 case 128:
  return (IEEE80211_IS_CHAN_STURBO(c));
 case 130:
  return (IEEE80211_IS_CHAN_HTA(c));
 case 129:
  return (IEEE80211_IS_CHAN_HTG(c));
 }
 return 1;

}
