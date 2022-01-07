
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IEEE80211_RATE_MCS ;
 int IEEE80211_RATE_VAL ;
 int snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static void
setrate(char b[], size_t bs, uint8_t rate)
{
 if (rate & IEEE80211_RATE_MCS)
  snprintf(b, bs, "MCS%u", rate & IEEE80211_RATE_VAL);
 else if (rate & 1)
  snprintf(b, bs, "%u.5M", rate / 2);
 else
  snprintf(b, bs, "%uM", rate / 2);
}
