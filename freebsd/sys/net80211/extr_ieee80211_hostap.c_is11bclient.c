
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int const IEEE80211_RATE_VAL ;

__attribute__((used)) static int
is11bclient(const uint8_t *rates, const uint8_t *xrates)
{
 static const uint32_t brates = (1<<2*1)|(1<<2*2)|(1<<11)|(1<<2*11);
 int i;


 if (xrates != ((void*)0) || rates == ((void*)0))
  return 0;
 for (i = 0; i < rates[1]; i++) {
  int r = rates[2+i] & IEEE80211_RATE_VAL;
  if (r > 2*11 || ((1<<r) & brates) == 0)
   return 0;
 }
 return 1;
}
