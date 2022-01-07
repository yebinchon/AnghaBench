
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {int iv_recv_pspoll; int iv_deliver_data; int iv_opdetach; int iv_recv_ctl; int iv_recv_mgmt; int iv_input; int iv_newstate; } ;


 int hostap_deliver_data ;
 int hostap_input ;
 int hostap_newstate ;
 int hostap_recv_ctl ;
 int hostap_recv_mgmt ;
 int hostap_vdetach ;
 int ieee80211_recv_pspoll ;

__attribute__((used)) static void
hostap_vattach(struct ieee80211vap *vap)
{
 vap->iv_newstate = hostap_newstate;
 vap->iv_input = hostap_input;
 vap->iv_recv_mgmt = hostap_recv_mgmt;
 vap->iv_recv_ctl = hostap_recv_ctl;
 vap->iv_opdetach = hostap_vdetach;
 vap->iv_deliver_data = hostap_deliver_data;
 vap->iv_recv_pspoll = ieee80211_recv_pspoll;
}
