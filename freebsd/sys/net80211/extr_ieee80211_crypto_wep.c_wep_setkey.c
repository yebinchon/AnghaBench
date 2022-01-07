
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key {int wk_keylen; } ;


 int NBBY ;

__attribute__((used)) static int
wep_setkey(struct ieee80211_key *k)
{
 return k->wk_keylen >= 40/NBBY;
}
