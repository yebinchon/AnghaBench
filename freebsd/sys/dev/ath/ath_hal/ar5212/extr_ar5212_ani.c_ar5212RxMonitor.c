
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_channel {int dummy; } ;
struct TYPE_5__ {int ns_avgbrssi; } ;
struct TYPE_6__ {TYPE_1__ ast_nodestats; } ;
struct ath_hal_5212 {TYPE_2__ ah_stats; } ;
struct ath_hal {int dummy; } ;
struct TYPE_7__ {int ns_avgbrssi; } ;
typedef TYPE_3__ HAL_NODE_STATS ;


 struct ath_hal_5212* AH5212 (struct ath_hal*) ;

void
ar5212RxMonitor(struct ath_hal *ah, const HAL_NODE_STATS *stats,
  const struct ieee80211_channel *chan)
{
 struct ath_hal_5212 *ahp = AH5212(ah);
 ahp->ah_stats.ast_nodestats.ns_avgbrssi = stats->ns_avgbrssi;
}
