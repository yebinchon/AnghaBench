
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211vap {TYPE_4__* iv_ic; } ;
struct TYPE_6__ {TYPE_1__* cap_wmeParams; } ;
struct TYPE_7__ {TYPE_2__ wme_chanParams; } ;
struct TYPE_8__ {TYPE_3__ ic_wme; } ;
struct TYPE_5__ {int wmep_noackPolicy; } ;


 int WME_NUM_AC ;

int
ieee80211_wme_vap_ac_is_noack(struct ieee80211vap *vap, int ac)
{

 if (ac < 0 || ac >= WME_NUM_AC)
  return (0);


 return (!! vap->iv_ic->ic_wme.wme_chanParams.cap_wmeParams[ac].wmep_noackPolicy);
}
