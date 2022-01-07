
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct ieee80211vap {scalar_t__ iv_scanvalid; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; scalar_t__ ic_lastscan; struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scanner {int dummy; } ;
struct ieee80211_scan_state {int ss_flags; TYPE_1__* ss_ops; } ;
struct ieee80211_scan_ssid {int dummy; } ;
struct TYPE_4__ {int ss_iflags; } ;
struct TYPE_3__ {int (* scan_end ) (struct ieee80211_scan_state*,struct ieee80211vap*) ;} ;


 int IEEE80211_F_SCAN ;
 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int IEEE80211_SCAN_FLUSH ;
 int IEEE80211_SCAN_NOSSID ;
 int ISCAN_DISCARD ;
 TYPE_2__* SCAN_PRIVATE (struct ieee80211_scan_state*) ;
 int ieee80211_notify_scan_done (struct ieee80211vap*) ;
 int ieee80211_scan_copy_ssid (struct ieee80211vap*,struct ieee80211_scan_state*,int ,struct ieee80211_scan_ssid const*) ;
 int ieee80211_swscan_start_scan_locked (struct ieee80211_scanner const*,struct ieee80211vap*,int,int ,int ,int ,int ,struct ieee80211_scan_ssid const*) ;
 scalar_t__ ieee80211_time_before (int ,scalar_t__) ;
 int stub1 (struct ieee80211_scan_state*,struct ieee80211vap*) ;
 int ticks ;

__attribute__((used)) static int
ieee80211_swscan_check_scan(const struct ieee80211_scanner *scan,
    struct ieee80211vap *vap, int flags,
    u_int duration, u_int mindwell, u_int maxdwell,
    u_int nssid, const struct ieee80211_scan_ssid ssids[])
{
 struct ieee80211com *ic = vap->iv_ic;
 struct ieee80211_scan_state *ss = ic->ic_scan;
 int result;

 IEEE80211_LOCK_ASSERT(ic);

 if (ss->ss_ops != ((void*)0)) {

  if ((flags & IEEE80211_SCAN_NOSSID) == 0) {




   ieee80211_scan_copy_ssid(vap, ss, nssid, ssids);
   flags |= IEEE80211_SCAN_NOSSID;
  }
  if ((ic->ic_flags & IEEE80211_F_SCAN) == 0 &&
      (flags & IEEE80211_SCAN_FLUSH) == 0 &&
      ieee80211_time_before(ticks, ic->ic_lastscan + vap->iv_scanvalid)) {
   SCAN_PRIVATE(ss)->ss_iflags |= ISCAN_DISCARD;
   ic->ic_flags |= IEEE80211_F_SCAN;


   ss->ss_flags = flags & 0xff;
   result = ss->ss_ops->scan_end(ss, vap);

   ic->ic_flags &= ~IEEE80211_F_SCAN;
   SCAN_PRIVATE(ss)->ss_iflags &= ~ISCAN_DISCARD;
   if (result) {
    ieee80211_notify_scan_done(vap);
    return 1;
   }
  }
 }
 result = ieee80211_swscan_start_scan_locked(scan, vap, flags, duration,
     mindwell, maxdwell, nssid, ssids);

 return result;
}
