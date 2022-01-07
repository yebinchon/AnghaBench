
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_opdetach; int iv_recv_mgmt; int iv_input; int iv_newstate; } ;


 int wds_input ;
 int wds_newstate ;
 int wds_recv_mgmt ;
 int wds_vdetach ;

__attribute__((used)) static void
wds_vattach(struct ieee80211vap *vap)
{
 vap->iv_newstate = wds_newstate;
 vap->iv_input = wds_input;
 vap->iv_recv_mgmt = wds_recv_mgmt;
 vap->iv_opdetach = wds_vdetach;
}
