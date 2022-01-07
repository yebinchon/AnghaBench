
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scanlist {scalar_t__* list; int count; } ;
struct ieee80211_channel {scalar_t__ ic_freq; } ;



__attribute__((used)) static int
checktable(const struct scanlist *scan, const struct ieee80211_channel *c)
{
 int i;

 for (; scan->list != ((void*)0); scan++) {
  for (i = 0; i < scan->count; i++)
   if (scan->list[i] == c->ic_freq)
    return 1;
 }
 return 0;
}
