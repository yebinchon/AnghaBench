
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ndis_softc {int dummy; } ;
struct ieee80211vap {TYPE_3__* iv_bss; TYPE_1__* iv_ic; } ;
struct ieee80211_key {int wk_keylen; int wk_flags; int wk_keyix; int wk_key; int * wk_keyrsc; TYPE_2__* wk_cipher; } ;
typedef int rkey ;
struct TYPE_9__ {int nk_len; int nk_keylen; int nk_keyidx; int nk_keydata; int nk_keyrsc; int nk_bssid; } ;
typedef TYPE_4__ ndis_80211_key ;
struct TYPE_8__ {int ni_bssid; } ;
struct TYPE_7__ {int ic_cipher; } ;
struct TYPE_6__ {struct ndis_softc* ic_softc; } ;


 int ENOTTY ;
 int IEEE80211_ADDR_LEN ;



 int IEEE80211_KEYIX_NONE ;
 int IEEE80211_KEY_GROUP ;
 int IEEE80211_KEY_SWMIC ;
 int IEEE80211_KEY_XMIT ;
 int OID_802_11_ADD_KEY ;
 int bcopy (int ,int ,int) ;
 int bzero (char*,int) ;
 int ieee80211broadcastaddr ;
 int ndis_set_info (struct ndis_softc*,int ,TYPE_4__*,int*) ;

__attribute__((used)) static int
ndis_add_key(struct ieee80211vap *vap, const struct ieee80211_key *key)
{
 struct ndis_softc *sc = vap->iv_ic->ic_softc;
 ndis_80211_key rkey;
 int len, error = 0;

 switch (key->wk_cipher->ic_cipher) {
 case 129:

  len = sizeof(ndis_80211_key);
  bzero((char *)&rkey, sizeof(rkey));

  rkey.nk_len = len;
  rkey.nk_keylen = key->wk_keylen;

  if (key->wk_flags & IEEE80211_KEY_SWMIC)
   rkey.nk_keylen += 16;



  if (key->wk_keyix != IEEE80211_KEYIX_NONE)
   rkey.nk_keyidx = key->wk_keyix;
  else
   rkey.nk_keyidx = 0;

  if (key->wk_flags & IEEE80211_KEY_XMIT)
   rkey.nk_keyidx |= 1 << 31;

  if (key->wk_flags & IEEE80211_KEY_GROUP) {
   bcopy(ieee80211broadcastaddr,
       rkey.nk_bssid, IEEE80211_ADDR_LEN);
  } else {
   bcopy(vap->iv_bss->ni_bssid,
       rkey.nk_bssid, IEEE80211_ADDR_LEN);

   rkey.nk_keyidx |= 1 << 30;
  }


  rkey.nk_keyrsc = key->wk_keyrsc[0];

  if (rkey.nk_keyrsc)
   rkey.nk_keyidx |= 1 << 29;

  if (key->wk_flags & IEEE80211_KEY_SWMIC) {
   bcopy(key->wk_key, rkey.nk_keydata, 16);
   bcopy(key->wk_key + 24, rkey.nk_keydata + 16, 8);
   bcopy(key->wk_key + 16, rkey.nk_keydata + 24, 8);
  } else
   bcopy(key->wk_key, rkey.nk_keydata, key->wk_keylen);

  error = ndis_set_info(sc, OID_802_11_ADD_KEY, &rkey, &len);
  break;
 case 128:
  error = 0;
  break;




 case 130:
 default:
  error = ENOTTY;
  break;
 }



 if (error)
  return (0);

 return (1);
}
