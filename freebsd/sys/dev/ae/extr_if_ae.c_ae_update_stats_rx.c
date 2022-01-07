
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int rx_align; int rx_trunc; int rx_frag; int rx_runt; int rx_codeerr; int rx_crcerr; int rx_ctrl; int rx_pause; int rx_mcast; int rx_bcast; } ;
typedef TYPE_1__ ae_stats_t ;


 int AE_RXD_ALIGN ;
 int AE_RXD_BCAST ;
 int AE_RXD_CODEERR ;
 int AE_RXD_CRCERR ;
 int AE_RXD_CTRL ;
 int AE_RXD_FRAG ;
 int AE_RXD_MCAST ;
 int AE_RXD_PAUSE ;
 int AE_RXD_RUNT ;
 int AE_RXD_TRUNC ;

__attribute__((used)) static void
ae_update_stats_rx(uint16_t flags, ae_stats_t *stats)
{

 if ((flags & AE_RXD_BCAST) != 0)
  stats->rx_bcast++;
 if ((flags & AE_RXD_MCAST) != 0)
  stats->rx_mcast++;
 if ((flags & AE_RXD_PAUSE) != 0)
  stats->rx_pause++;
 if ((flags & AE_RXD_CTRL) != 0)
  stats->rx_ctrl++;
 if ((flags & AE_RXD_CRCERR) != 0)
  stats->rx_crcerr++;
 if ((flags & AE_RXD_CODEERR) != 0)
  stats->rx_codeerr++;
 if ((flags & AE_RXD_RUNT) != 0)
  stats->rx_runt++;
 if ((flags & AE_RXD_FRAG) != 0)
  stats->rx_frag++;
 if ((flags & AE_RXD_TRUNC) != 0)
  stats->rx_trunc++;
 if ((flags & AE_RXD_ALIGN) != 0)
  stats->rx_align++;
}
