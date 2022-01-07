
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int (* ic_update_mcast ) (struct ieee80211com*) ;} ;


 int stub1 (struct ieee80211com*) ;

__attribute__((used)) static void
update_mcast(void *arg, int npending)
{
 struct ieee80211com *ic = arg;

 ic->ic_update_mcast(ic);
}
