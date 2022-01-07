
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ieee80211_channel {int ic_maxregpower; int ic_ieee; int ic_freq; int ic_flags; } ;


 int htole16 (int ) ;
 int htole32 (int ) ;

__attribute__((used)) static void
set_xchannel(void *p, const struct ieee80211_channel *c)
{
 struct {
  uint32_t flags;
  uint16_t freq;
  uint8_t ieee;
  uint8_t maxpow;
 } *rc = p;

 rc->flags = htole32(c->ic_flags);
 rc->freq = htole16(c->ic_freq);
 rc->ieee = c->ic_ieee;
 rc->maxpow = c->ic_maxregpower;
}
