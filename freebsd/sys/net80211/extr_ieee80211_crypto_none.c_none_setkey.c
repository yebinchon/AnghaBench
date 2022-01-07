
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key {int dummy; } ;



__attribute__((used)) static int
none_setkey(struct ieee80211_key *k)
{
 (void) k;
 return 1;
}
