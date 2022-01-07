
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scan_state {int ss_iflags; scalar_t__ ss_scanend; } ;
struct ieee80211vap {int iv_flags_ext; int (* iv_sta_ps ) (struct ieee80211vap*,int ) ;} ;
struct ieee80211com {int ic_flags_ext; int ic_flags; } ;
struct ieee80211_scan_state {scalar_t__ ss_next; scalar_t__ ss_last; int ss_flags; struct ieee80211vap* ss_vap; struct ieee80211com* ss_ic; } ;


 int IEEE80211_FEXT_BGSCAN ;
 int IEEE80211_FEXT_SCAN_OFFLOAD ;
 int IEEE80211_F_SCAN ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_SCAN_ONCE ;
 int IEEE80211_SCAN_PICK1ST ;
 int IEEE80211_UNLOCK (struct ieee80211com*) ;
 int ISCAN_ABORT ;
 int ISCAN_INTERRUPT ;
 int ISCAN_PAUSE ;
 struct scan_state* SCAN_PRIVATE (struct ieee80211_scan_state*) ;
 int ieee80211_notify_scan_done (struct ieee80211vap*) ;
 int stub1 (struct ieee80211vap*,int ) ;

__attribute__((used)) static void
scan_done(struct ieee80211_scan_state *ss, int scandone)
{
 struct scan_state *ss_priv = SCAN_PRIVATE(ss);
 struct ieee80211com *ic = ss->ss_ic;
 struct ieee80211vap *vap = ss->ss_vap;

 IEEE80211_LOCK_ASSERT(ic);







 ic->ic_flags &= ~IEEE80211_F_SCAN;
 if (scandone) {




  if ((vap->iv_flags_ext & IEEE80211_FEXT_SCAN_OFFLOAD) == 0)
   vap->iv_sta_ps(vap, 0);
  if (ss->ss_next >= ss->ss_last)
   ic->ic_flags_ext &= ~IEEE80211_FEXT_BGSCAN;


  if (!(ss_priv->ss_iflags & ISCAN_INTERRUPT))
   ieee80211_notify_scan_done(vap);
 }
 ss_priv->ss_iflags &= ~(ISCAN_PAUSE | ISCAN_ABORT);
 ss_priv->ss_scanend = 0;
 ss->ss_flags &= ~(IEEE80211_SCAN_ONCE | IEEE80211_SCAN_PICK1ST);
 IEEE80211_UNLOCK(ic);

}
