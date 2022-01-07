
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211com {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ieee80211_channel {int dummy; } ;



__attribute__((used)) static int
null_setregdomain(struct ieee80211com *ic,
 struct ieee80211_regdomain *rd,
 int nchans, struct ieee80211_channel chans[])
{
 return 0;
}
