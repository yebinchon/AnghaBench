
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_rateset {int rs_nrates; int rs_rates; } ;


 int IEEE80211_ELEMID_RATES ;
 int IEEE80211_RATE_SIZE ;
 int memcpy (int *,int ,int) ;

uint8_t *
ieee80211_add_rates(uint8_t *frm, const struct ieee80211_rateset *rs)
{
 int nrates;

 *frm++ = IEEE80211_ELEMID_RATES;
 nrates = rs->rs_nrates;
 if (nrates > IEEE80211_RATE_SIZE)
  nrates = IEEE80211_RATE_SIZE;
 *frm++ = nrates;
 memcpy(frm, rs->rs_rates, nrates);
 return frm + nrates;
}
