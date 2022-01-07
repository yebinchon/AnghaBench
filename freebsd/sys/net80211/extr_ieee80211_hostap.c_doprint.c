
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct TYPE_2__ {int ic_flags; } ;




 int IEEE80211_F_SCAN ;

__attribute__((used)) static __inline int
doprint(struct ieee80211vap *vap, int subtype)
{
 switch (subtype) {
 case 129:
  return (vap->iv_ic->ic_flags & IEEE80211_F_SCAN);
 case 128:
  return 0;
 }
 return 1;
}
