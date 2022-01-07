
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211vap {int iv_quiet_count_value; int iv_quiet_count; int iv_quiet_offset; int iv_quiet_duration; int iv_quiet_period; } ;
struct ieee80211_quiet_ie {int len; int tbttcount; void* offset; void* duration; int period; int quiet_ie; } ;


 int IEEE80211_ELEMID_QUIET ;
 void* htole16 (int ) ;

__attribute__((used)) static uint8_t *
ieee80211_add_quiet(uint8_t *frm, struct ieee80211vap *vap, int update)
{
 struct ieee80211_quiet_ie *quiet = (struct ieee80211_quiet_ie *) frm;

 quiet->quiet_ie = IEEE80211_ELEMID_QUIET;
 quiet->len = 6;





 if (update) {
  if (vap->iv_quiet_count_value == 1)
   vap->iv_quiet_count_value = vap->iv_quiet_count;
  else if (vap->iv_quiet_count_value > 1)
   vap->iv_quiet_count_value--;
 }

 if (vap->iv_quiet_count_value == 0) {

  vap->iv_quiet_count_value = 1;
 }

 quiet->tbttcount = vap->iv_quiet_count_value;
 quiet->period = vap->iv_quiet_period;
 quiet->duration = htole16(vap->iv_quiet_duration);
 quiet->offset = htole16(vap->iv_quiet_offset);
 return frm + sizeof(*quiet);
}
