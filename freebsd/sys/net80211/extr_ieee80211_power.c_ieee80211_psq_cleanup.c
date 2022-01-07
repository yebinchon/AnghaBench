
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_psq {scalar_t__ psq_len; } ;


 int IEEE80211_PSQ_DESTROY (struct ieee80211_psq*) ;
 int KASSERT (int,char*) ;
 int psq_drain (struct ieee80211_psq*) ;

void
ieee80211_psq_cleanup(struct ieee80211_psq *psq)
{



 KASSERT(psq->psq_len == 0, ("%d frames on ps q", psq->psq_len));

 IEEE80211_PSQ_DESTROY(psq);
}
