
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_psq {int psq_maxlen; } ;


 int IEEE80211_PSQ_INIT (struct ieee80211_psq*,char const*) ;
 int IEEE80211_PS_MAX_QUEUE ;
 int memset (struct ieee80211_psq*,int ,int) ;

void
ieee80211_psq_init(struct ieee80211_psq *psq, const char *name)
{
 memset(psq, 0, sizeof(*psq));
 psq->psq_maxlen = IEEE80211_PS_MAX_QUEUE;
 IEEE80211_PSQ_INIT(psq, name);
}
