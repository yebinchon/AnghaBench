
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_ies {int * data; } ;


 int IEEE80211_FREE (int *,int ) ;
 int M_80211_NODE_IE ;

void
ieee80211_ies_cleanup(struct ieee80211_ies *ies)
{
 if (ies->data != ((void*)0))
  IEEE80211_FREE(ies->data, M_80211_NODE_IE);
}
