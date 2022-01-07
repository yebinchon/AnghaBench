
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_opdetach; int iv_input; int iv_newstate; } ;


 int monitor_input ;
 int monitor_newstate ;
 int monitor_vdetach ;

__attribute__((used)) static void
monitor_vattach(struct ieee80211vap *vap)
{
 vap->iv_newstate = monitor_newstate;
 vap->iv_input = monitor_input;
 vap->iv_opdetach = monitor_vdetach;
}
