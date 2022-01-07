
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_key {TYPE_1__* wk_cipher; } ;
struct TYPE_2__ {int (* ic_detach ) (struct ieee80211_key*) ;} ;


 int stub1 (struct ieee80211_key*) ;

__attribute__((used)) static __inline void
cipher_detach(struct ieee80211_key *key)
{
 key->wk_cipher->ic_detach(key);
}
