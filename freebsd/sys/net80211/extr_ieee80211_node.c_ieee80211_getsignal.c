
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {scalar_t__ iv_opmode; int * iv_bss; TYPE_1__* iv_ic; } ;
typedef int int8_t ;
struct TYPE_2__ {int (* ic_node_getsignal ) (int *,int *,int *) ;} ;


 scalar_t__ IEEE80211_M_STA ;
 int ieee80211_getrssi (struct ieee80211vap*) ;
 int stub1 (int *,int *,int *) ;

void
ieee80211_getsignal(struct ieee80211vap *vap, int8_t *rssi, int8_t *noise)
{

 if (vap->iv_bss == ((void*)0))
  return;
 vap->iv_ic->ic_node_getsignal(vap->iv_bss, rssi, noise);

 if (vap->iv_opmode != IEEE80211_M_STA)
  *rssi = ieee80211_getrssi(vap);
}
