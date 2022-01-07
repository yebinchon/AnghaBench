
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {TYPE_1__* ic_scan_methods; } ;
struct TYPE_2__ {int (* sc_cancel_anyscan ) (struct ieee80211vap*) ;} ;


 int stub1 (struct ieee80211vap*) ;

void
ieee80211_cancel_anyscan(struct ieee80211vap *vap)
{
 struct ieee80211com *ic = vap->iv_ic;

 ic->ic_scan_methods->sc_cancel_anyscan(vap);
}
