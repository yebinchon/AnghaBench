
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {TYPE_2__* iv_ic; } ;
struct chanAccParams {int dummy; } ;
struct TYPE_3__ {int wme_chanParams; } ;
struct TYPE_4__ {TYPE_1__ ic_wme; } ;


 int memcpy (struct chanAccParams*,int *,int) ;

void
ieee80211_wme_vap_getparams(struct ieee80211vap *vap, struct chanAccParams *wp)
{

 memcpy(wp, &vap->iv_ic->ic_wme.wme_chanParams, sizeof(*wp));
}
