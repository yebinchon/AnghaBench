
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_node {int dummy; } ;
struct TYPE_3__ {struct ieee80211_node** data; } ;
typedef TYPE_1__ MWL_HAL_BASTREAM ;


 int IEEE80211_REASON_UNSPECIFIED ;
 int ieee80211_ampdu_stop (struct ieee80211_node*,struct ieee80211_node*,int ) ;

__attribute__((used)) static void
mwl_bawatchdog(const MWL_HAL_BASTREAM *sp)
{
 struct ieee80211_node *ni = sp->data[0];


 ieee80211_ampdu_stop(ni, sp->data[1], IEEE80211_REASON_UNSPECIFIED);
}
