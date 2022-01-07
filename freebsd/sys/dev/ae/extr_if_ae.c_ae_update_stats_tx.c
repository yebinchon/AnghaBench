
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int tx_underrun; int tx_abortcol; int tx_latecol; int tx_multicol; int tx_singlecol; int tx_excdefer; int tx_defer; int tx_ctrl; int tx_pause; int tx_mcast; int tx_bcast; } ;
typedef TYPE_1__ ae_stats_t ;


 int AE_TXS_ABORTCOL ;
 int AE_TXS_BCAST ;
 int AE_TXS_CTRL ;
 int AE_TXS_DEFER ;
 int AE_TXS_EXCDEFER ;
 int AE_TXS_LATECOL ;
 int AE_TXS_MCAST ;
 int AE_TXS_MULTICOL ;
 int AE_TXS_PAUSE ;
 int AE_TXS_SINGLECOL ;
 int AE_TXS_UNDERRUN ;

__attribute__((used)) static void
ae_update_stats_tx(uint16_t flags, ae_stats_t *stats)
{

 if ((flags & AE_TXS_BCAST) != 0)
  stats->tx_bcast++;
 if ((flags & AE_TXS_MCAST) != 0)
  stats->tx_mcast++;
 if ((flags & AE_TXS_PAUSE) != 0)
  stats->tx_pause++;
 if ((flags & AE_TXS_CTRL) != 0)
  stats->tx_ctrl++;
 if ((flags & AE_TXS_DEFER) != 0)
  stats->tx_defer++;
 if ((flags & AE_TXS_EXCDEFER) != 0)
  stats->tx_excdefer++;
 if ((flags & AE_TXS_SINGLECOL) != 0)
  stats->tx_singlecol++;
 if ((flags & AE_TXS_MULTICOL) != 0)
  stats->tx_multicol++;
 if ((flags & AE_TXS_LATECOL) != 0)
  stats->tx_latecol++;
 if ((flags & AE_TXS_ABORTCOL) != 0)
  stats->tx_abortcol++;
 if ((flags & AE_TXS_UNDERRUN) != 0)
  stats->tx_underrun++;
}
