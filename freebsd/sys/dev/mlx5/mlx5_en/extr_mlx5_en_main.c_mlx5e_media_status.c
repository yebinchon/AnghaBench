
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_pauseframe_control; scalar_t__ rx_pauseframe_control; } ;
struct mlx5e_priv {int media_active_last; TYPE_1__ params; int media_status_last; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;
struct ifmediareq {int ifm_active; int ifm_status; } ;


 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;

__attribute__((used)) static void
mlx5e_media_status(struct ifnet *dev, struct ifmediareq *ifmr)
{
 struct mlx5e_priv *priv = dev->if_softc;

 ifmr->ifm_status = priv->media_status_last;
 ifmr->ifm_active = priv->media_active_last |
     (priv->params.rx_pauseframe_control ? IFM_ETH_RXPAUSE : 0) |
     (priv->params.tx_pauseframe_control ? IFM_ETH_TXPAUSE : 0);

}
