
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlan ;
struct ieee80211vap {int iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211req_sta_vlan {int sv_vlan; int sv_macaddr; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_node {int ni_vlan; } ;
struct TYPE_2__ {int ic_sta; } ;


 int EINVAL ;
 int ENOENT ;
 int IEEE80211_ADDR_EQ (int ,int ) ;
 int copyin (int ,struct ieee80211req_sta_vlan*,int) ;
 int copyout (struct ieee80211req_sta_vlan*,int ,int) ;
 struct ieee80211_node* ieee80211_find_vap_node (int *,struct ieee80211vap*,int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;
 int zerobssid ;

__attribute__((used)) static int
ieee80211_ioctl_getstavlan(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211_node *ni;
 struct ieee80211req_sta_vlan vlan;
 int error;

 if (ireq->i_len != sizeof(vlan))
  return EINVAL;
 error = copyin(ireq->i_data, &vlan, sizeof(vlan));
 if (error != 0)
  return error;
 if (!IEEE80211_ADDR_EQ(vlan.sv_macaddr, zerobssid)) {
  ni = ieee80211_find_vap_node(&vap->iv_ic->ic_sta, vap,
      vlan.sv_macaddr);
  if (ni == ((void*)0))
   return ENOENT;
 } else
  ni = ieee80211_ref_node(vap->iv_bss);
 vlan.sv_vlan = ni->ni_vlan;
 error = copyout(&vlan, ireq->i_data, sizeof(vlan));
 ieee80211_free_node(ni);
 return error;
}
