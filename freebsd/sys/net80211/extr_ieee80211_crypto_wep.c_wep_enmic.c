
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ieee80211_key {int dummy; } ;



__attribute__((used)) static int
wep_enmic(struct ieee80211_key *k, struct mbuf *m, int force)
{

 return 1;
}
