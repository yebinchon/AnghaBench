
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ieee80211com* ss_ic; } ;
struct scan_state {TYPE_1__ base; int ss_scan_curchan; int ss_scan_start; } ;
struct ieee80211com {int ic_scan_mindwell; int ic_scan_curchan; TYPE_1__* ic_scan; int ic_tq; int * ic_scan_methods; } ;


 scalar_t__ IEEE80211_MALLOC (int,int ,int) ;
 int IEEE80211_M_NOWAIT ;
 int IEEE80211_M_ZERO ;
 int M_80211_SCAN ;
 int TASK_INIT (int *,int ,int ,struct scan_state*) ;
 int TIMEOUT_TASK_INIT (int ,int *,int ,int ,struct scan_state*) ;
 int scan_curchan ;
 int scan_curchan_task ;
 int scan_mindwell ;
 int scan_start ;
 int swscan_methods ;

void
ieee80211_swscan_attach(struct ieee80211com *ic)
{
 struct scan_state *ss;




 ic->ic_scan_methods = &swscan_methods;


 ss = (struct scan_state *) IEEE80211_MALLOC(sizeof(struct scan_state),
  M_80211_SCAN, IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
 if (ss == ((void*)0)) {
  ic->ic_scan = ((void*)0);
  return;
 }
 TASK_INIT(&ss->ss_scan_start, 0, scan_start, ss);
 TIMEOUT_TASK_INIT(ic->ic_tq, &ss->ss_scan_curchan, 0,
     scan_curchan_task, ss);

 ic->ic_scan = &ss->base;
 ss->base.ss_ic = ic;

 ic->ic_scan_curchan = scan_curchan;
 ic->ic_scan_mindwell = scan_mindwell;
}
