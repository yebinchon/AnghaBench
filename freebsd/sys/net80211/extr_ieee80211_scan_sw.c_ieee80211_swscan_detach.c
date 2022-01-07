
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211com {int ic_flags; struct ieee80211_scan_state* ic_scan; int ic_tq; } ;
struct ieee80211_scan_state {TYPE_1__* ss_ops; } ;
struct TYPE_5__ {int ss_scan_curchan; int ss_scan_start; } ;
struct TYPE_4__ {int (* scan_detach ) (struct ieee80211_scan_state*) ;} ;


 int IEEE80211_FREE (TYPE_2__*,int ) ;
 int IEEE80211_F_SCAN ;
 int ISCAN_ABORT ;
 int KASSERT (int,char*) ;
 int M_80211_SCAN ;
 TYPE_2__* SCAN_PRIVATE (struct ieee80211_scan_state*) ;
 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int scan_signal (struct ieee80211_scan_state*,int ) ;
 int stub1 (struct ieee80211_scan_state*) ;
 int taskqueue_drain_timeout (int ,int *) ;

__attribute__((used)) static void
ieee80211_swscan_detach(struct ieee80211com *ic)
{
 struct ieee80211_scan_state *ss = ic->ic_scan;

 if (ss != ((void*)0)) {
  scan_signal(ss, ISCAN_ABORT);
  ieee80211_draintask(ic, &SCAN_PRIVATE(ss)->ss_scan_start);
  taskqueue_drain_timeout(ic->ic_tq,
      &SCAN_PRIVATE(ss)->ss_scan_curchan);
  KASSERT((ic->ic_flags & IEEE80211_F_SCAN) == 0,
      ("scan still running"));
  if (ss->ss_ops != ((void*)0)) {
   ss->ss_ops->scan_detach(ss);
   ss->ss_ops = ((void*)0);
  }
  ic->ic_scan = ((void*)0);
  IEEE80211_FREE(SCAN_PRIVATE(ss), M_80211_SCAN);
 }
}
