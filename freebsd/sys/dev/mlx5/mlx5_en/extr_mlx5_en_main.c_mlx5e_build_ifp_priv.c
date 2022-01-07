
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_cq_moderation_mode; int num_tc; int hw_lro_en; int cqe_zipping_en; int num_channels; int channels_rsss; scalar_t__ default_vlan_prio; int lro_wqe_sz; int tx_min_inline_mode; int tx_max_inline; scalar_t__ rx_hash_log_tbl_sz; int min_rx_wqes; int tx_cq_moderation_pkts; int tx_cq_moderation_usec; int rx_cq_moderation_pkts; int rx_cq_moderation_usec; int log_rq_size; int log_sq_size; } ;
struct mlx5e_priv {int counter_set_id; int num_tc; int set_rx_mode_work; int update_carrier_work; int update_stats_work; TYPE_1__ params; scalar_t__ default_vlan_prio; scalar_t__ queue_mapping_channel_mask; scalar_t__ order_base_2_num_channels; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE ;
 int MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE ;
 int MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ ;
 int MLX5E_PARAMS_DEFAULT_MIN_RX_WQES ;
 int MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_PKTS ;
 int MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC ;
 int MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC_FROM_CQE ;
 scalar_t__ MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ ;
 int MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS ;
 int MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int cq_period_start_from_cqe ;
 int mlx5_query_min_inline (struct mlx5_core_dev*,int *) ;
 int mlx5e_get_max_inline_cap (struct mlx5_core_dev*) ;
 int mlx5e_set_rx_mode_work ;
 int mlx5e_update_carrier_work ;
 int mlx5e_update_stats_work ;
 scalar_t__ order_base_2 (int) ;
 scalar_t__ roundup_pow_of_two (int) ;

__attribute__((used)) static int
mlx5e_build_ifp_priv(struct mlx5_core_dev *mdev,
    struct mlx5e_priv *priv,
    int num_comp_vectors)
{
 int err;





 priv->params.log_sq_size =
     MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE;
 priv->params.log_rq_size =
     MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE;
 priv->params.rx_cq_moderation_usec =
     MLX5_CAP_GEN(mdev, cq_period_start_from_cqe) ?
     MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC_FROM_CQE :
     MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC;
 priv->params.rx_cq_moderation_mode =
     MLX5_CAP_GEN(mdev, cq_period_start_from_cqe) ? 1 : 0;
 priv->params.rx_cq_moderation_pkts =
     MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_PKTS;
 priv->params.tx_cq_moderation_usec =
     MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC;
 priv->params.tx_cq_moderation_pkts =
     MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS;
 priv->params.min_rx_wqes =
     MLX5E_PARAMS_DEFAULT_MIN_RX_WQES;
 priv->params.rx_hash_log_tbl_sz =
     (order_base_2(num_comp_vectors) >
     MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ) ?
     order_base_2(num_comp_vectors) :
     MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ;
 priv->params.num_tc = 1;
 priv->params.default_vlan_prio = 0;
 priv->counter_set_id = -1;
 priv->params.tx_max_inline = mlx5e_get_max_inline_cap(mdev);

 err = mlx5_query_min_inline(mdev, &priv->params.tx_min_inline_mode);
 if (err)
  return (err);





 priv->params.hw_lro_en = 0;
 priv->params.lro_wqe_sz = MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ;






 priv->params.cqe_zipping_en = 0;

 priv->mdev = mdev;
 priv->params.num_channels = num_comp_vectors;
 priv->params.channels_rsss = 1;
 priv->order_base_2_num_channels = order_base_2(num_comp_vectors);
 priv->queue_mapping_channel_mask =
     roundup_pow_of_two(num_comp_vectors) - 1;
 priv->num_tc = priv->params.num_tc;
 priv->default_vlan_prio = priv->params.default_vlan_prio;

 INIT_WORK(&priv->update_stats_work, mlx5e_update_stats_work);
 INIT_WORK(&priv->update_carrier_work, mlx5e_update_carrier_work);
 INIT_WORK(&priv->set_rx_mode_work, mlx5e_set_rx_mode_work);

 return (0);
}
