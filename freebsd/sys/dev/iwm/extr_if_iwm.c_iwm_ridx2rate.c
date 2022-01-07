
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211_rateset {int rs_nrates; int* rs_rates; } ;
struct TYPE_2__ {int rate; } ;


 int IEEE80211_RATE_VAL ;
 TYPE_1__* iwm_rates ;

uint8_t
iwm_ridx2rate(struct ieee80211_rateset *rs, int ridx)
{
 int i;
 uint8_t rval;

 for (i = 0; i < rs->rs_nrates; i++) {
  rval = (rs->rs_rates[i] & IEEE80211_RATE_VAL);
  if (rval == iwm_rates[ridx].rate)
   return rs->rs_rates[i];
 }

 return 0;
}
