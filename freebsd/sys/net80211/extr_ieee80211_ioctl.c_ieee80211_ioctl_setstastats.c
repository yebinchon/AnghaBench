
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_node {int ni_stats; } ;
struct TYPE_2__ {int ic_sta; } ;


 int EINVAL ;
 int ENOENT ;
 int IEEE80211_ADDR_LEN ;
 int copyin (int ,int *,int) ;
 struct ieee80211_node* ieee80211_find_vap_node (int *,struct ieee80211vap*,int *) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int
ieee80211_ioctl_setstastats(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211_node *ni;
 uint8_t macaddr[IEEE80211_ADDR_LEN];
 int error;






 if (ireq->i_len < IEEE80211_ADDR_LEN)
  return EINVAL;
 error = copyin(ireq->i_data, macaddr, IEEE80211_ADDR_LEN);
 if (error != 0)
  return error;
 ni = ieee80211_find_vap_node(&vap->iv_ic->ic_sta, vap, macaddr);
 if (ni == ((void*)0))
  return ENOENT;

 memset(&ni->ni_stats, 0, sizeof(ni->ni_stats));
 ieee80211_free_node(ni);
 return 0;
}
