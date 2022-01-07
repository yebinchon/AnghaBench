
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ifmedia {int ifm_media; } ;
struct mlx4_en_priv {TYPE_2__* prof; scalar_t__ rx_mb_size; int port; TYPE_1__* mdev; struct ifmedia media; } ;
struct ifnet {struct mlx4_en_priv* if_softc; } ;
struct TYPE_4__ {int tx_pause; int rx_pause; int rx_ppp; int tx_ppp; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 scalar_t__ ETHER_CRC_LEN ;





 scalar_t__ IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 int IFM_FDX ;
 int IFM_OPTIONS (int) ;
 int IFM_SUBTYPE (int) ;
 scalar_t__ IFM_TYPE (int) ;
 char* if_name (struct ifnet*) ;
 int mlx4_SET_PORT_general (int ,int ,scalar_t__,int,int ,int,int ) ;
 int mlx4_en_calc_media (struct mlx4_en_priv*) ;
 int printf (char*,char*) ;

__attribute__((used)) static int mlx4_en_media_change(struct ifnet *dev)
{
 struct mlx4_en_priv *priv;
        struct ifmedia *ifm;
 int rxpause;
 int txpause;
 int error;

 priv = dev->if_softc;
 ifm = &priv->media;
 rxpause = txpause = 0;
 error = 0;

 if (IFM_TYPE(ifm->ifm_media) != IFM_ETHER)
  return (EINVAL);
        switch (IFM_SUBTYPE(ifm->ifm_media)) {
        case 128:
  break;
 case 130:
 case 131:
 case 132:
 case 129:
  if ((IFM_SUBTYPE(ifm->ifm_media)
   == IFM_SUBTYPE(mlx4_en_calc_media(priv)))
   && (ifm->ifm_media & IFM_FDX))
   break;

 default:
                printf("%s: Only auto media type\n", if_name(dev));
                return (EINVAL);
 }

 if (IFM_OPTIONS(ifm->ifm_media) & IFM_ETH_RXPAUSE)
  rxpause = 1;
 if (IFM_OPTIONS(ifm->ifm_media) & IFM_ETH_TXPAUSE)
  txpause = 1;
 if (priv->prof->tx_pause != txpause || priv->prof->rx_pause != rxpause) {
  priv->prof->tx_pause = txpause;
  priv->prof->rx_pause = rxpause;
  error = -mlx4_SET_PORT_general(priv->mdev->dev, priv->port,
       priv->rx_mb_size + ETHER_CRC_LEN, priv->prof->tx_pause,
       priv->prof->tx_ppp, priv->prof->rx_pause,
       priv->prof->rx_ppp);
 }
 return (error);
}
