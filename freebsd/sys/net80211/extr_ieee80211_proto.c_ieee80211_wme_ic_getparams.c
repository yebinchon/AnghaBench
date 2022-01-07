
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wme_chanParams; } ;
struct ieee80211com {TYPE_1__ ic_wme; } ;
struct chanAccParams {int dummy; } ;


 int memcpy (struct chanAccParams*,int *,int) ;

void
ieee80211_wme_ic_getparams(struct ieee80211com *ic, struct chanAccParams *wp)
{

 memcpy(wp, &ic->ic_wme.wme_chanParams, sizeof(*wp));
}
