
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int ic_restart_task; } ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

void
ieee80211_restart_all(struct ieee80211com *ic)
{




 taskqueue_enqueue(taskqueue_thread, &ic->ic_restart_task);
}
