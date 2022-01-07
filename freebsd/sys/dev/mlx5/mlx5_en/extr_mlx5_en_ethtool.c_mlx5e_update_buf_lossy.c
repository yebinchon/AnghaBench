
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int hw_mtu; } ;
struct TYPE_3__ {int rx_priority_flow_control; } ;
struct mlx5e_priv {TYPE_2__ params_ethtool; TYPE_1__ params; } ;
struct ieee_pfc {int pfc_en; } ;
typedef int pfc ;


 int MLX5E_PORT_BUFFER_PFC ;
 int PRIV_ASSERT_LOCKED (struct mlx5e_priv*) ;
 int bzero (struct ieee_pfc*,int) ;
 int mlx5e_port_manual_buffer_config (struct mlx5e_priv*,int ,int ,struct ieee_pfc*,int *,int *) ;

int
mlx5e_update_buf_lossy(struct mlx5e_priv *priv)
{
 struct ieee_pfc pfc;

 PRIV_ASSERT_LOCKED(priv);
 bzero(&pfc, sizeof(pfc));
 pfc.pfc_en = priv->params.rx_priority_flow_control;
 return (-mlx5e_port_manual_buffer_config(priv, MLX5E_PORT_BUFFER_PFC,
     priv->params_ethtool.hw_mtu, &pfc, ((void*)0), ((void*)0)));
}
