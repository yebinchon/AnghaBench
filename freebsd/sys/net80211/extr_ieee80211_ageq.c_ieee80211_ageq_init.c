
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ageq {int aq_maxlen; } ;


 int IEEE80211_AGEQ_INIT (struct ieee80211_ageq*,char const*) ;
 int memset (struct ieee80211_ageq*,int ,int) ;

void
ieee80211_ageq_init(struct ieee80211_ageq *aq, int maxlen, const char *name)
{
 memset(aq, 0, sizeof(*aq));
 aq->aq_maxlen = maxlen;
 IEEE80211_AGEQ_INIT(aq, name);
}
