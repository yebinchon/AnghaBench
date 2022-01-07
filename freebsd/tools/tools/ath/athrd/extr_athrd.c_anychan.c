
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_flags; } ;



__attribute__((used)) static int
anychan(const struct ieee80211_channel *chans, int nc, int flag)
{
 int i;

 for (i = 0; i < nc; i++)
  if ((chans[i].ic_flags & flag) != 0)
   return 1;
 return 0;
}
