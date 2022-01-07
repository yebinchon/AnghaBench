
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {TYPE_1__* iv_bss; } ;
struct TYPE_2__ {struct ieee80211vap* ni_wdsvap; } ;



__attribute__((used)) static void
wds_vdetach(struct ieee80211vap *vap)
{
 if (vap->iv_bss != ((void*)0)) {

  if (vap->iv_bss->ni_wdsvap == vap)
   vap->iv_bss->ni_wdsvap = ((void*)0);
 }
}
