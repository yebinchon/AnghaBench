
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_node {int ni_psq; } ;


 int psq_drain (int *) ;

int
ieee80211_node_psq_drain(struct ieee80211_node *ni)
{
 return psq_drain(&ni->ni_psq);
}
