
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int * ic_channels; int * ic_curchan; } ;



__attribute__((used)) static void
ieee80211_start_reset_chan(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 ic->ic_curchan = &ic->ic_channels[0];
}
