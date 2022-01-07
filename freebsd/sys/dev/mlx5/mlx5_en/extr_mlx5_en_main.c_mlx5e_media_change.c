
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int ifm_media; } ;
struct TYPE_3__ {int rx_pauseframe_control; int tx_pauseframe_control; scalar_t__ tx_priority_flow_control; scalar_t__ rx_priority_flow_control; } ;
struct mlx5e_priv {int state; TYPE_2__ media; TYPE_1__ params; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifnet {struct mlx5e_priv* if_softc; } ;
typedef int out ;


 int EINVAL ;
 scalar_t__ IFM_AUTO ;
 scalar_t__ IFM_ETHER ;
 int IFM_ETH_RXPAUSE ;
 int IFM_ETH_TXPAUSE ;
 scalar_t__ IFM_SUBTYPE (int) ;
 scalar_t__ IFM_TYPE (int) ;
 int MLX5E_STATE_OPENED ;
 int MLX5_CAP_PCAM_FEATURE (struct mlx5_core_dev*,int ) ;
 int MLX5_GET_ETH_PROTO (int ,int*,int,int ) ;
 int MLX5_PORT_DOWN ;
 int MLX5_PORT_UP ;
 int MLX5_PTYS_EN ;
 int MLX5_ST_SZ_DW (int ) ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_LOCKED (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int eth_proto_capability ;
 int mlx5_en_err (struct ifnet*,char*) ;
 int mlx5_query_port_ptys (struct mlx5_core_dev*,int*,int,int ,int) ;
 int mlx5_set_port_proto (struct mlx5_core_dev*,int,int ,int) ;
 int mlx5_set_port_status (struct mlx5_core_dev*,int ) ;
 int mlx5e_find_link_mode (scalar_t__,int) ;
 int mlx5e_set_port_pause_and_pfc (struct mlx5e_priv*) ;
 int ptys_extended_ethernet ;
 int ptys_reg ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
mlx5e_media_change(struct ifnet *dev)
{
 struct mlx5e_priv *priv = dev->if_softc;
 struct mlx5_core_dev *mdev = priv->mdev;
 u32 eth_proto_cap;
 u32 link_mode;
 u32 out[MLX5_ST_SZ_DW(ptys_reg)];
 int was_opened;
 int locked;
 int error;
 bool ext;

 locked = PRIV_LOCKED(priv);
 if (!locked)
  PRIV_LOCK(priv);

 if (IFM_TYPE(priv->media.ifm_media) != IFM_ETHER) {
  error = EINVAL;
  goto done;
 }

 error = mlx5_query_port_ptys(mdev, out, sizeof(out),
     MLX5_PTYS_EN, 1);
 if (error != 0) {
  mlx5_en_err(dev, "Query port media capability failed\n");
  goto done;
 }

 ext = MLX5_CAP_PCAM_FEATURE(mdev, ptys_extended_ethernet);
 link_mode = mlx5e_find_link_mode(IFM_SUBTYPE(priv->media.ifm_media), ext);


 eth_proto_cap = MLX5_GET_ETH_PROTO(ptys_reg, out, ext,
     eth_proto_capability);


 if (IFM_SUBTYPE(priv->media.ifm_media) == IFM_AUTO) {
  link_mode = eth_proto_cap;
  if (link_mode == 0) {
   mlx5_en_err(dev, "Port media capability is zero\n");
   error = EINVAL;
   goto done;
  }
 } else {
  link_mode = link_mode & eth_proto_cap;
  if (link_mode == 0) {
   mlx5_en_err(dev, "Not supported link mode requested\n");
   error = EINVAL;
   goto done;
  }
 }
 if (priv->media.ifm_media & (IFM_ETH_RXPAUSE | IFM_ETH_TXPAUSE)) {

  if (priv->params.rx_priority_flow_control ||
      priv->params.tx_priority_flow_control) {
   mlx5_en_err(dev, "PFC must be disabled before enabling global pauseframes.\n");
   error = EINVAL;
   goto done;
  }
 }

 priv->params.rx_pauseframe_control =
     (priv->media.ifm_media & IFM_ETH_RXPAUSE) ? 1 : 0;
 priv->params.tx_pauseframe_control =
     (priv->media.ifm_media & IFM_ETH_TXPAUSE) ? 1 : 0;


 was_opened = test_bit(MLX5E_STATE_OPENED, &priv->state);


 mlx5_set_port_status(mdev, MLX5_PORT_DOWN);
 mlx5_set_port_proto(mdev, link_mode, MLX5_PTYS_EN, ext);
 error = -mlx5e_set_port_pause_and_pfc(priv);
 if (was_opened)
  mlx5_set_port_status(mdev, MLX5_PORT_UP);

done:
 if (!locked)
  PRIV_UNLOCK(priv);
 return (error);
}
