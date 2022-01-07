
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_node {TYPE_1__* ni_ic; } ;
typedef int int8_t ;
struct TYPE_5__ {int nf; } ;
struct TYPE_6__ {TYPE_2__ mn_ai; } ;
struct TYPE_4__ {int (* ic_node_getrssi ) (struct ieee80211_node const*) ;} ;


 TYPE_3__* MWL_NODE_CONST (struct ieee80211_node const*) ;
 int stub1 (struct ieee80211_node const*) ;

__attribute__((used)) static void
mwl_node_getsignal(const struct ieee80211_node *ni, int8_t *rssi, int8_t *noise)
{
 *rssi = ni->ni_ic->ic_node_getrssi(ni);
 *noise = -95;

}
