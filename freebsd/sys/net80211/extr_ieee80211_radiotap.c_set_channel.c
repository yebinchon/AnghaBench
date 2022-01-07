
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct ieee80211_channel {int ic_flags; int ic_freq; } ;


 void* htole16 (int ) ;

__attribute__((used)) static void
set_channel(void *p, const struct ieee80211_channel *c)
{
 struct {
  uint16_t freq;
  uint16_t flags;
 } *rc = p;

 rc->freq = htole16(c->ic_freq);
 rc->flags = htole16(c->ic_flags);
}
