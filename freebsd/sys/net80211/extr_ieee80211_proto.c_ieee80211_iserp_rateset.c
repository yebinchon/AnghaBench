
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;


 int IEEE80211_RATE_VAL ;
 int nitems (int const*) ;

int
ieee80211_iserp_rateset(const struct ieee80211_rateset *rs)
{
 static const int rates[] = { 2, 4, 11, 22, 12, 24, 48 };
 int i, j;

 if (rs->rs_nrates < nitems(rates))
  return 0;
 for (i = 0; i < nitems(rates); i++) {
  for (j = 0; j < rs->rs_nrates; j++) {
   int r = rs->rs_rates[j] & IEEE80211_RATE_VAL;
   if (rates[i] == r)
    goto next;
   if (r > rates[i])
    return 0;
  }
  return 0;
 next:
  ;
 }
 return 1;
}
