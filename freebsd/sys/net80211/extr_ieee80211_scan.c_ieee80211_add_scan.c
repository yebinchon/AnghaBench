
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {TYPE_1__* ic_scan_methods; } ;
struct ieee80211_scanparams {int dummy; } ;
struct ieee80211_frame {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {void (* sc_add_scan ) (struct ieee80211vap*,struct ieee80211_channel*,struct ieee80211_scanparams const*,struct ieee80211_frame const*,int,int,int) ;} ;


 void stub1 (struct ieee80211vap*,struct ieee80211_channel*,struct ieee80211_scanparams const*,struct ieee80211_frame const*,int,int,int) ;

void
ieee80211_add_scan(struct ieee80211vap *vap,
 struct ieee80211_channel *curchan,
 const struct ieee80211_scanparams *sp,
 const struct ieee80211_frame *wh,
 int subtype, int rssi, int noise)
{
 struct ieee80211com *ic = vap->iv_ic;

 return (ic->ic_scan_methods->sc_add_scan(vap, curchan, sp, wh, subtype,
     rssi, noise));
}
