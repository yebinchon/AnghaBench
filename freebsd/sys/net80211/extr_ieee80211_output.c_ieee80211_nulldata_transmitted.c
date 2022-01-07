
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;


 int wakeup (struct ieee80211vap*) ;

__attribute__((used)) static void
ieee80211_nulldata_transmitted(struct ieee80211_node *ni, void *arg,
    int status)
{
 struct ieee80211vap *vap = ni->ni_vap;

 wakeup(vap);
}
