
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int dummy; } ;
struct uath_cmd_crypto {void* flags; int* key; struct uath_cmd_crypto* magic2; void* mask; void* size; void* magic1; void* keyidx; } ;
struct ieee80211_key {int wk_keylen; int* wk_key; } ;
typedef int crypto ;


 int DPRINTF (struct uath_softc*,int ,char*,int,int) ;
 int UATH_DEBUG_CRYPTO ;
 int UATH_DEFAULT_KEY ;
 int WDCMSG_SET_KEY_CACHE_ENTRY ;
 void* htobe32 (int) ;
 int memset (struct uath_cmd_crypto*,int,int) ;
 int uath_cmd_write (struct uath_softc*,int ,struct uath_cmd_crypto*,int,int ) ;

__attribute__((used)) static int
uath_set_key(struct uath_softc *sc, const struct ieee80211_key *wk,
    int index)
{
 return (0);

}
