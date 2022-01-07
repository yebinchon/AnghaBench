
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scanlist {int dummy; } ;
struct ieee80211vap {scalar_t__ iv_des_mode; struct ieee80211_channel* iv_des_chan; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_nchans; struct ieee80211_channel* ic_channels; } ;
struct ieee80211_scan_state {scalar_t__ ss_last; struct ieee80211_channel** ss_chans; } ;
struct ieee80211_channel {int dummy; } ;


 struct ieee80211_channel* IEEE80211_CHAN_ANYC ;
 scalar_t__ IEEE80211_IS_CHAN_DTURBO (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_HT (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_VHT (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_MODE_AUTO ;
 scalar_t__ IEEE80211_SCAN_MAX ;
 scalar_t__ checktable (struct scanlist const*,struct ieee80211_channel*) ;
 scalar_t__ ieee80211_chan2mode (struct ieee80211_channel*) ;
 scalar_t__ isexcluded (struct ieee80211vap*,struct ieee80211_channel*) ;
 int onscanlist (struct ieee80211_scan_state*,struct ieee80211_channel*) ;

__attribute__((used)) static void
sweepchannels(struct ieee80211_scan_state *ss, struct ieee80211vap *vap,
 const struct scanlist table[])
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_channel *c;
 int i;

 for (i = 0; i < ic->ic_nchans; i++) {
  if (ss->ss_last >= IEEE80211_SCAN_MAX)
   break;

  c = &ic->ic_channels[i];






  if (IEEE80211_IS_CHAN_DTURBO(c) || IEEE80211_IS_CHAN_HT(c) ||
      IEEE80211_IS_CHAN_VHT(c))
   continue;





  if (vap->iv_des_mode != IEEE80211_MODE_AUTO &&
      vap->iv_des_mode != ieee80211_chan2mode(c))
   continue;




  if (isexcluded(vap, c))
   continue;







  if (checktable(table, c))
   continue;


  ss->ss_chans[ss->ss_last++] = c;
 }
 c = vap->iv_des_chan;
 if (c != IEEE80211_CHAN_ANYC &&
     !onscanlist(ss, c) &&
     (vap->iv_des_mode == IEEE80211_MODE_AUTO ||
      vap->iv_des_mode == ieee80211_chan2mode(c)) &&
     ss->ss_last < IEEE80211_SCAN_MAX)
  ss->ss_chans[ss->ss_last++] = c;
}
