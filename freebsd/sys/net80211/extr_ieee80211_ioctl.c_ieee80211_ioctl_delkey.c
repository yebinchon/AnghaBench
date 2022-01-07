
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211vap {scalar_t__ iv_opmode; int * iv_nw_keys; TYPE_1__* iv_ic; int iv_bss; } ;
struct ieee80211req_del_key {int idk_keyix; int idk_macaddr; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_node {int ni_bssid; } ;
typedef int dk ;
struct TYPE_2__ {int ic_sta; } ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOENT ;
 int IEEE80211_ADDR_EQ (int ,int ) ;
 scalar_t__ IEEE80211_KEYIX_NONE ;
 scalar_t__ IEEE80211_M_STA ;
 int IEEE80211_WEP_NKID ;
 int copyin (int ,struct ieee80211req_del_key*,int) ;
 int ieee80211_crypto_delkey (struct ieee80211vap*,int *) ;
 struct ieee80211_node* ieee80211_find_vap_node (int *,struct ieee80211vap*,int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;
 int ieee80211_node_delucastkey (struct ieee80211_node*) ;
 struct ieee80211_node* ieee80211_ref_node (int ) ;

__attribute__((used)) static int
ieee80211_ioctl_delkey(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211req_del_key dk;
 int kid, error;

 if (ireq->i_len != sizeof(dk))
  return EINVAL;
 error = copyin(ireq->i_data, &dk, sizeof(dk));
 if (error)
  return error;
 kid = dk.idk_keyix;

 if (dk.idk_keyix == (uint8_t) IEEE80211_KEYIX_NONE) {
  struct ieee80211_node *ni;

  if (vap->iv_opmode == IEEE80211_M_STA) {
   ni = ieee80211_ref_node(vap->iv_bss);
   if (!IEEE80211_ADDR_EQ(dk.idk_macaddr, ni->ni_bssid)) {
    ieee80211_free_node(ni);
    return EADDRNOTAVAIL;
   }
  } else {
   ni = ieee80211_find_vap_node(&vap->iv_ic->ic_sta, vap,
    dk.idk_macaddr);
   if (ni == ((void*)0))
    return ENOENT;
  }

  ieee80211_node_delucastkey(ni);
  ieee80211_free_node(ni);
 } else {
  if (kid >= IEEE80211_WEP_NKID)
   return EINVAL;

  ieee80211_crypto_delkey(vap, &vap->iv_nw_keys[kid]);
 }
 return 0;
}
