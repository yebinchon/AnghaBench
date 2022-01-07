
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;


 int ieee80211_resume_all (struct ieee80211com*) ;
 int ieee80211_suspend_all (struct ieee80211com*) ;

__attribute__((used)) static void
restart_vaps(void *arg, int npending)
{
 struct ieee80211com *ic = arg;

 ieee80211_suspend_all(ic);
 ieee80211_resume_all(ic);
}
