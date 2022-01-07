
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeout_task {int dummy; } ;
struct scan_state {int ss_iflags; struct timeout_task ss_scan_curchan; } ;
struct ieee80211com {int ic_tq; } ;
struct ieee80211_scan_state {struct ieee80211com* ss_ic; } ;


 int IEEE80211_LOCK_ASSERT (struct ieee80211com*) ;
 int ISCAN_RUNNING ;
 struct scan_state* SCAN_PRIVATE (struct ieee80211_scan_state*) ;
 scalar_t__ taskqueue_cancel_timeout (int ,struct timeout_task*,int *) ;
 int taskqueue_enqueue_timeout (int ,struct timeout_task*,int ) ;

__attribute__((used)) static void
scan_signal_locked(struct ieee80211_scan_state *ss, int iflags)
{
 struct scan_state *ss_priv = SCAN_PRIVATE(ss);
 struct timeout_task *scan_task = &ss_priv->ss_scan_curchan;
 struct ieee80211com *ic = ss->ss_ic;

 IEEE80211_LOCK_ASSERT(ic);

 ss_priv->ss_iflags |= iflags;
 if (ss_priv->ss_iflags & ISCAN_RUNNING) {
  if (taskqueue_cancel_timeout(ic->ic_tq, scan_task, ((void*)0)) == 0)
   taskqueue_enqueue_timeout(ic->ic_tq, scan_task, 0);
 }
}
