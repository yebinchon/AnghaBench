
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int dummy; } ;


 int ieee80211_scan_done (struct ieee80211vap*) ;

__attribute__((used)) static void
ndis_scan(void *arg)
{
 struct ieee80211vap *vap = arg;

 ieee80211_scan_done(vap);
}
