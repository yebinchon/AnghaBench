
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_bmiss; int iv_opdetach; int iv_recv_ctl; int iv_recv_mgmt; int iv_input; int iv_newstate; } ;


 int sta_beacon_miss ;
 int sta_input ;
 int sta_newstate ;
 int sta_recv_ctl ;
 int sta_recv_mgmt ;
 int sta_vdetach ;

__attribute__((used)) static void
sta_vattach(struct ieee80211vap *vap)
{
 vap->iv_newstate = sta_newstate;
 vap->iv_input = sta_input;
 vap->iv_recv_mgmt = sta_recv_mgmt;
 vap->iv_recv_ctl = sta_recv_ctl;
 vap->iv_opdetach = sta_vdetach;
 vap->iv_bmiss = sta_beacon_miss;
}
