
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ndis_softc {int dummy; } ;
struct ieee80211vap {TYPE_1__* iv_ifp; TYPE_2__* iv_ic; } ;
struct ieee80211_key {int wk_keyix; } ;
typedef int rkey ;
struct TYPE_7__ {int nk_len; int nk_bssid; int nk_keyidx; } ;
typedef TYPE_3__ ndis_80211_key ;
struct TYPE_6__ {struct ndis_softc* ic_softc; } ;
struct TYPE_5__ {int if_broadcastaddr; } ;


 int IEEE80211_ADDR_LEN ;
 int OID_802_11_REMOVE_KEY ;
 int bcopy (int ,int ,int ) ;
 int bzero (char*,int) ;
 int ndis_set_info (struct ndis_softc*,int ,TYPE_3__*,int*) ;

int
ndis_del_key(struct ieee80211vap *vap, const struct ieee80211_key *key)
{
 struct ndis_softc *sc = vap->iv_ic->ic_softc;
 ndis_80211_key rkey;
 int len, error = 0;

 bzero((char *)&rkey, sizeof(rkey));
 len = sizeof(rkey);

 rkey.nk_len = len;
 rkey.nk_keyidx = key->wk_keyix;

 bcopy(vap->iv_ifp->if_broadcastaddr,
     rkey.nk_bssid, IEEE80211_ADDR_LEN);

 error = ndis_set_info(sc, OID_802_11_REMOVE_KEY, &rkey, &len);

 if (error)
  return (0);

 return (1);
}
