
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int ctx; } ;
struct TYPE_12__ {int ctx; } ;
struct TYPE_11__ {int ctx; } ;
struct TYPE_14__ {TYPE_5__ port_stats_debug; TYPE_4__ pport; TYPE_3__ vport; } ;
struct TYPE_9__ {int tx_active_connections; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct mlx5e_priv {int gone; int wq; int cq_uar; int mdev; int pdn; int tdn; int mr; int sysctl_ctx; TYPE_6__ stats; scalar_t__ sysctl_debug; int media; int * pfil; int * vlan_detach; int * vlan_attach; int tstmp_clbr; int watchdog; struct ifnet* ifp; TYPE_2__ rl; } ;
struct TYPE_15__ {int num_comp_vectors; } ;
struct TYPE_16__ {TYPE_7__ eq_table; } ;
struct mlx5_core_dev {TYPE_8__ priv; } ;
struct ifnet {int dummy; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int M_MLX5EN ;
 int PRIV_LOCK (struct mlx5e_priv*) ;
 int PRIV_UNLOCK (struct mlx5e_priv*) ;
 scalar_t__ READ_ONCE (int ) ;
 int callout_drain (int *) ;
 int ether_ifdetach (struct ifnet*) ;
 int flush_workqueue (int ) ;
 int free (struct mlx5e_priv*,int ) ;
 int hz ;
 int if_free (struct ifnet*) ;
 int ifmedia_removeall (int *) ;
 int mlx5_core_dealloc_pd (int ,int ) ;
 int mlx5_core_destroy_mkey (int ,int *) ;
 int mlx5_dealloc_transport_domain (int ,int ) ;
 int mlx5_en_err (struct ifnet*,char*) ;
 int mlx5_unmap_free_uar (int ,int *) ;
 int mlx5e_close_locked (struct ifnet*) ;
 int mlx5e_disable_async_events (struct mlx5e_priv*) ;
 int mlx5e_priv_static_destroy (struct mlx5e_priv*,int ) ;
 int mlx5e_priv_wait_for_completion (struct mlx5e_priv*,int ) ;
 int mlx5e_rl_cleanup (struct mlx5e_priv*) ;
 int pause (char*,int ) ;
 int pfil_head_unregister (int *) ;
 int sysctl_ctx_free (int *) ;
 int vlan_config ;
 int vlan_unconfig ;

__attribute__((used)) static void
mlx5e_destroy_ifp(struct mlx5_core_dev *mdev, void *vpriv)
{
 struct mlx5e_priv *priv = vpriv;
 struct ifnet *ifp = priv->ifp;


 priv->gone = 1;


 pause("W", hz);
 mlx5e_priv_wait_for_completion(priv, mdev->priv.eq_table.num_comp_vectors);


 callout_drain(&priv->watchdog);

 callout_drain(&priv->tstmp_clbr);

 if (priv->vlan_attach != ((void*)0))
  EVENTHANDLER_DEREGISTER(vlan_config, priv->vlan_attach);
 if (priv->vlan_detach != ((void*)0))
  EVENTHANDLER_DEREGISTER(vlan_unconfig, priv->vlan_detach);


 PRIV_LOCK(priv);
 mlx5e_close_locked(ifp);
 PRIV_UNLOCK(priv);


 if (priv->pfil != ((void*)0)) {
  pfil_head_unregister(priv->pfil);
  priv->pfil = ((void*)0);
 }


 ifmedia_removeall(&priv->media);
 ether_ifdetach(ifp);





 sysctl_ctx_free(&priv->stats.vport.ctx);
 sysctl_ctx_free(&priv->stats.pport.ctx);
 if (priv->sysctl_debug)
  sysctl_ctx_free(&priv->stats.port_stats_debug.ctx);
 sysctl_ctx_free(&priv->sysctl_ctx);

 mlx5_core_destroy_mkey(priv->mdev, &priv->mr);
 mlx5_dealloc_transport_domain(priv->mdev, priv->tdn);
 mlx5_core_dealloc_pd(priv->mdev, priv->pdn);
 mlx5_unmap_free_uar(priv->mdev, &priv->cq_uar);
 mlx5e_disable_async_events(priv);
 flush_workqueue(priv->wq);
 mlx5e_priv_static_destroy(priv, mdev->priv.eq_table.num_comp_vectors);
 if_free(ifp);
 free(priv, M_MLX5EN);
}
