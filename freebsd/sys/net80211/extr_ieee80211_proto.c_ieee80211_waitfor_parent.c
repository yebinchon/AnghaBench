
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_tq; int ic_chw_task; int ic_bmiss_task; int ic_chan_task; int ic_promisc_task; int ic_mcast_task; int ic_parent_task; } ;


 int ieee80211_draintask (struct ieee80211com*,int *) ;
 int taskqueue_block (int ) ;
 int taskqueue_unblock (int ) ;

void
ieee80211_waitfor_parent(struct ieee80211com *ic)
{
 taskqueue_block(ic->ic_tq);
 ieee80211_draintask(ic, &ic->ic_parent_task);
 ieee80211_draintask(ic, &ic->ic_mcast_task);
 ieee80211_draintask(ic, &ic->ic_promisc_task);
 ieee80211_draintask(ic, &ic->ic_chan_task);
 ieee80211_draintask(ic, &ic->ic_bmiss_task);
 ieee80211_draintask(ic, &ic->ic_chw_task);
 taskqueue_unblock(ic->ic_tq);
}
