
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int txpow ;
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211req_sta_txpow {int it_txpow; int it_macaddr; } ;
struct ieee80211req {int i_len; int i_data; } ;
struct ieee80211_node {int ni_txpower; } ;
struct TYPE_2__ {int ic_sta; } ;


 int EINVAL ;
 int ENOENT ;
 int copyin (int ,struct ieee80211req_sta_txpow*,int) ;
 int copyout (struct ieee80211req_sta_txpow*,int ,int) ;
 struct ieee80211_node* ieee80211_find_vap_node (int *,struct ieee80211vap*,int ) ;
 int ieee80211_free_node (struct ieee80211_node*) ;

__attribute__((used)) static int
ieee80211_ioctl_getstatxpow(struct ieee80211vap *vap, struct ieee80211req *ireq)
{
 struct ieee80211_node *ni;
 struct ieee80211req_sta_txpow txpow;
 int error;

 if (ireq->i_len != sizeof(txpow))
  return EINVAL;
 error = copyin(ireq->i_data, &txpow, sizeof(txpow));
 if (error != 0)
  return error;
 ni = ieee80211_find_vap_node(&vap->iv_ic->ic_sta, vap, txpow.it_macaddr);
 if (ni == ((void*)0))
  return ENOENT;
 txpow.it_txpow = ni->ni_txpower;
 error = copyout(&txpow, ireq->i_data, sizeof(txpow));
 ieee80211_free_node(ni);
 return error;
}
