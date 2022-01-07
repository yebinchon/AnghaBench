
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* rs_rates; } ;
struct ieee80211_node {int ni_txrate; TYPE_1__ ni_rates; } ;


 int IEEE80211_RATE_VAL ;

__attribute__((used)) static void
none_node_init(struct ieee80211_node *ni)
{
 ni->ni_txrate = ni->ni_rates.rs_rates[0] & IEEE80211_RATE_VAL;
}
