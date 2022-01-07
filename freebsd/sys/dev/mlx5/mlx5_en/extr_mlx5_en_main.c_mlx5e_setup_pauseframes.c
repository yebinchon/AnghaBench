
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tx_pauseframe_control; int rx_pauseframe_control; scalar_t__ tx_priority_flow_control; scalar_t__ rx_priority_flow_control; } ;
struct mlx5e_priv {TYPE_4__ params; int ifp; int sysctl_ifnet; int sysctl_ctx; TYPE_3__* mdev; } ;
typedef int path ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_5__ {int bsddev; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RDTUN ;
 int CTLFLAG_RWTUN ;
 int CTLTYPE_U8 ;
 int EINVAL ;
 int OID_AUTO ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int ,int*,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,struct mlx5e_priv*,int ,int *,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int device_get_unit (int ) ;
 int mlx5_en_err (int ,char*) ;
 int mlx5e_set_port_pause_and_pfc (struct mlx5e_priv*) ;
 int mlx5e_sysctl_rx_priority_flow_control ;
 int mlx5e_sysctl_tx_priority_flow_control ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
mlx5e_setup_pauseframes(struct mlx5e_priv *priv)
{

 char path[96];

 int error;


 priv->params.tx_pauseframe_control = 1;
 priv->params.rx_pauseframe_control = 1;


 priv->params.tx_priority_flow_control = 0;
 priv->params.rx_priority_flow_control = 0;



 snprintf(path, sizeof(path), "dev.mce.%d.tx_pauseframe_control",
     device_get_unit(priv->mdev->pdev->dev.bsddev));


 TUNABLE_INT_FETCH(path, &priv->params.tx_pauseframe_control);


 snprintf(path, sizeof(path), "dev.mce.%d.rx_pauseframe_control",
     device_get_unit(priv->mdev->pdev->dev.bsddev));


 TUNABLE_INT_FETCH(path, &priv->params.rx_pauseframe_control);



 SYSCTL_ADD_INT(&priv->sysctl_ctx, SYSCTL_CHILDREN(priv->sysctl_ifnet),
     OID_AUTO, "tx_pauseframe_control", CTLFLAG_RDTUN,
     &priv->params.tx_pauseframe_control, 0,
     "Set to enable TX pause frames. Clear to disable.");

 SYSCTL_ADD_INT(&priv->sysctl_ctx, SYSCTL_CHILDREN(priv->sysctl_ifnet),
     OID_AUTO, "rx_pauseframe_control", CTLFLAG_RDTUN,
     &priv->params.rx_pauseframe_control, 0,
     "Set to enable RX pause frames. Clear to disable.");


 SYSCTL_ADD_PROC(&priv->sysctl_ctx, SYSCTL_CHILDREN(priv->sysctl_ifnet),
     OID_AUTO, "tx_priority_flow_control", CTLTYPE_U8 | CTLFLAG_RWTUN |
     CTLFLAG_MPSAFE, priv, 0, &mlx5e_sysctl_tx_priority_flow_control, "CU",
     "Set to enable TX ports flow control frames for priorities 0..7. Clear to disable.");

 SYSCTL_ADD_PROC(&priv->sysctl_ctx, SYSCTL_CHILDREN(priv->sysctl_ifnet),
     OID_AUTO, "rx_priority_flow_control", CTLTYPE_U8 | CTLFLAG_RWTUN |
     CTLFLAG_MPSAFE, priv, 0, &mlx5e_sysctl_rx_priority_flow_control, "CU",
     "Set to enable RX ports flow control frames for priorities 0..7. Clear to disable.");

 PRIV_LOCK(priv);


 priv->params.tx_pauseframe_control =
     priv->params.tx_pauseframe_control ? 1 : 0;
 priv->params.rx_pauseframe_control =
     priv->params.rx_pauseframe_control ? 1 : 0;


 error = mlx5e_set_port_pause_and_pfc(priv);
 if (error == -EINVAL) {
  mlx5_en_err(priv->ifp,
      "Global pauseframes must be disabled before enabling PFC.\n");
  priv->params.rx_priority_flow_control = 0;
  priv->params.tx_priority_flow_control = 0;


  (void) mlx5e_set_port_pause_and_pfc(priv);
 }
 PRIV_UNLOCK(priv);
}
