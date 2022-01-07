
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct rum_softc {int dummy; } ;
struct ieee80211_key {int wk_keylen; int wk_rxmic; int wk_txmic; TYPE_1__* wk_cipher; int wk_key; } ;
struct TYPE_2__ {scalar_t__ ic_cipher; } ;


 int EIO ;
 scalar_t__ IEEE80211_CIPHER_TKIP ;
 scalar_t__ IEEE80211_KEYBUF_SIZE ;
 scalar_t__ rum_write_multi (struct rum_softc*,scalar_t__,int ,int) ;

__attribute__((used)) static int
rum_common_key_set(struct rum_softc *sc, struct ieee80211_key *k,
    uint16_t base)
{

 if (rum_write_multi(sc, base, k->wk_key, k->wk_keylen))
  return EIO;

 if (k->wk_cipher->ic_cipher == IEEE80211_CIPHER_TKIP) {
  if (rum_write_multi(sc, base + IEEE80211_KEYBUF_SIZE,
      k->wk_txmic, 8))
   return EIO;
  if (rum_write_multi(sc, base + IEEE80211_KEYBUF_SIZE + 8,
      k->wk_rxmic, 8))
   return EIO;
 }

 return 0;
}
