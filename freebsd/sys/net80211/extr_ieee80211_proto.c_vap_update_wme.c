
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211vap {int (* iv_wme_update ) (struct ieee80211vap*,int ) ;struct ieee80211com* iv_ic; } ;
struct TYPE_3__ {int cap_wmeParams; } ;
struct TYPE_4__ {int (* wme_update ) (struct ieee80211com*) ;TYPE_1__ wme_chanParams; } ;
struct ieee80211com {TYPE_2__ ic_wme; } ;


 int stub1 (struct ieee80211vap*,int ) ;
 int stub2 (struct ieee80211com*) ;

__attribute__((used)) static void
vap_update_wme(void *arg, int npending)
{
 struct ieee80211vap *vap = arg;
 struct ieee80211com *ic = vap->iv_ic;

 if (vap->iv_wme_update != ((void*)0))
  vap->iv_wme_update(vap,
      ic->ic_wme.wme_chanParams.cap_wmeParams);
 else
  ic->ic_wme.wme_update(ic);
}
