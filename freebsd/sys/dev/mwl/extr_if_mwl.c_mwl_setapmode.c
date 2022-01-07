
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl_hal_vap {int dummy; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {struct mwl_hal_vap* mv_hvap; } ;


 TYPE_1__* MWL_VAP (struct ieee80211vap*) ;
 int mwl_getapmode (struct ieee80211vap*,struct ieee80211_channel*) ;
 int mwl_hal_setapmode (struct mwl_hal_vap*,int ) ;

__attribute__((used)) static int
mwl_setapmode(struct ieee80211vap *vap, struct ieee80211_channel *chan)
{
 struct mwl_hal_vap *hvap = MWL_VAP(vap)->mv_hvap;
 return mwl_hal_setapmode(hvap, mwl_getapmode(vap, chan));
}
