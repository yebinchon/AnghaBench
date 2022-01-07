
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211vap {scalar_t__ iv_opmode; int iv_flags; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; } ;
struct ieee80211_channel {int dummy; } ;


 int IEEE80211_CAPINFO_ESS ;
 int IEEE80211_CAPINFO_IBSS ;
 int IEEE80211_CAPINFO_PRIVACY ;
 int IEEE80211_CAPINFO_SHORT_PREAMBLE ;
 int IEEE80211_CAPINFO_SHORT_SLOTTIME ;
 int IEEE80211_CAPINFO_SPECTRUM_MGMT ;
 int IEEE80211_F_DOTH ;
 int IEEE80211_F_PRIVACY ;
 int IEEE80211_F_SHPREAMBLE ;
 int IEEE80211_F_SHSLOT ;
 scalar_t__ IEEE80211_IS_CHAN_2GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_5GHZ (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_M_HOSTAP ;
 scalar_t__ IEEE80211_M_IBSS ;
 scalar_t__ IEEE80211_M_STA ;
 int KASSERT (int,char*) ;

uint16_t
ieee80211_getcapinfo(struct ieee80211vap *vap, struct ieee80211_channel *chan)
{
 struct ieee80211com *ic = vap->iv_ic;
 uint16_t capinfo;

 KASSERT(vap->iv_opmode != IEEE80211_M_STA, ("station mode"));

 if (vap->iv_opmode == IEEE80211_M_HOSTAP)
  capinfo = IEEE80211_CAPINFO_ESS;
 else if (vap->iv_opmode == IEEE80211_M_IBSS)
  capinfo = IEEE80211_CAPINFO_IBSS;
 else
  capinfo = 0;
 if (vap->iv_flags & IEEE80211_F_PRIVACY)
  capinfo |= IEEE80211_CAPINFO_PRIVACY;
 if ((ic->ic_flags & IEEE80211_F_SHPREAMBLE) &&
     IEEE80211_IS_CHAN_2GHZ(chan))
  capinfo |= IEEE80211_CAPINFO_SHORT_PREAMBLE;
 if (ic->ic_flags & IEEE80211_F_SHSLOT)
  capinfo |= IEEE80211_CAPINFO_SHORT_SLOTTIME;
 if (IEEE80211_IS_CHAN_5GHZ(chan) && (vap->iv_flags & IEEE80211_F_DOTH))
  capinfo |= IEEE80211_CAPINFO_SPECTRUM_MGMT;
 return capinfo;
}
