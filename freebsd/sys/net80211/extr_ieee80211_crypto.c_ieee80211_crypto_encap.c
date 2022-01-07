
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_key {struct ieee80211_cipher* wk_cipher; } ;
struct ieee80211_cipher {scalar_t__ (* ic_encap ) (struct ieee80211_key*,struct mbuf*) ;} ;


 struct ieee80211_key* ieee80211_crypto_get_txkey (struct ieee80211_node*,struct mbuf*) ;
 scalar_t__ stub1 (struct ieee80211_key*,struct mbuf*) ;

struct ieee80211_key *
ieee80211_crypto_encap(struct ieee80211_node *ni, struct mbuf *m)
{
 struct ieee80211_key *k;
 const struct ieee80211_cipher *cip;

 if ((k = ieee80211_crypto_get_txkey(ni, m)) != ((void*)0)) {
  cip = k->wk_cipher;
  return (cip->ic_encap(k, m) ? k : ((void*)0));
 }

 return ((void*)0);
}
