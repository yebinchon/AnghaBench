
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_rateset {scalar_t__ rs_nrates; scalar_t__ rs_rates; } ;


 int IEEE80211_ELEMID_XRATES ;
 scalar_t__ IEEE80211_RATE_SIZE ;
 int memcpy (int *,scalar_t__,int) ;

uint8_t *
ieee80211_add_xrates(uint8_t *frm, const struct ieee80211_rateset *rs)
{



 if (rs->rs_nrates > IEEE80211_RATE_SIZE) {
  int nrates = rs->rs_nrates - IEEE80211_RATE_SIZE;
  *frm++ = IEEE80211_ELEMID_XRATES;
  *frm++ = nrates;
  memcpy(frm, rs->rs_rates + IEEE80211_RATE_SIZE, nrates);
  frm += nrates;
 }
 return frm;
}
