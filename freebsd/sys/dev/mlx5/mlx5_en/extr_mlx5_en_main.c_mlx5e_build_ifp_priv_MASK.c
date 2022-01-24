#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int rx_cq_moderation_mode; int num_tc; int hw_lro_en; int cqe_zipping_en; int num_channels; int channels_rsss; scalar_t__ default_vlan_prio; int /*<<< orphan*/  lro_wqe_sz; int /*<<< orphan*/  tx_min_inline_mode; int /*<<< orphan*/  tx_max_inline; scalar_t__ rx_hash_log_tbl_sz; int /*<<< orphan*/  min_rx_wqes; int /*<<< orphan*/  tx_cq_moderation_pkts; int /*<<< orphan*/  tx_cq_moderation_usec; int /*<<< orphan*/  rx_cq_moderation_pkts; int /*<<< orphan*/  rx_cq_moderation_usec; int /*<<< orphan*/  log_rq_size; int /*<<< orphan*/  log_sq_size; } ;
struct mlx5e_priv {int counter_set_id; int num_tc; int /*<<< orphan*/  set_rx_mode_work; int /*<<< orphan*/  update_carrier_work; int /*<<< orphan*/  update_stats_work; TYPE_1__ params; scalar_t__ default_vlan_prio; scalar_t__ queue_mapping_channel_mask; scalar_t__ order_base_2_num_channels; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_MIN_RX_WQES ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_PKTS ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC_FROM_CQE ; 
 scalar_t__ MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS ; 
 int /*<<< orphan*/  MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cq_period_start_from_cqe ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  mlx5e_set_rx_mode_work ; 
 int /*<<< orphan*/  mlx5e_update_carrier_work ; 
 int /*<<< orphan*/  mlx5e_update_stats_work ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct mlx5_core_dev *mdev,
    struct mlx5e_priv *priv,
    int num_comp_vectors)
{
	int err;

	/*
	 * TODO: Consider link speed for setting "log_sq_size",
	 * "log_rq_size" and "cq_moderation_xxx":
	 */
	priv->params.log_sq_size =
	    MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE;
	priv->params.log_rq_size =
	    MLX5E_PARAMS_DEFAULT_LOG_RQ_SIZE;
	priv->params.rx_cq_moderation_usec =
	    FUNC1(mdev, cq_period_start_from_cqe) ?
	    MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC_FROM_CQE :
	    MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_USEC;
	priv->params.rx_cq_moderation_mode =
	    FUNC1(mdev, cq_period_start_from_cqe) ? 1 : 0;
	priv->params.rx_cq_moderation_pkts =
	    MLX5E_PARAMS_DEFAULT_RX_CQ_MODERATION_PKTS;
	priv->params.tx_cq_moderation_usec =
	    MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_USEC;
	priv->params.tx_cq_moderation_pkts =
	    MLX5E_PARAMS_DEFAULT_TX_CQ_MODERATION_PKTS;
	priv->params.min_rx_wqes =
	    MLX5E_PARAMS_DEFAULT_MIN_RX_WQES;
	priv->params.rx_hash_log_tbl_sz =
	    (FUNC4(num_comp_vectors) >
	    MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ) ?
	    FUNC4(num_comp_vectors) :
	    MLX5E_PARAMS_DEFAULT_RX_HASH_LOG_TBL_SZ;
	priv->params.num_tc = 1;
	priv->params.default_vlan_prio = 0;
	priv->counter_set_id = -1;
	priv->params.tx_max_inline = FUNC3(mdev);

	err = FUNC2(mdev, &priv->params.tx_min_inline_mode);
	if (err)
		return (err);

	/*
	 * hw lro is currently defaulted to off. when it won't anymore we
	 * will consider the HW capability: "!!MLX5_CAP_ETH(mdev, lro_cap)"
	 */
	priv->params.hw_lro_en = false;
	priv->params.lro_wqe_sz = MLX5E_PARAMS_DEFAULT_LRO_WQE_SZ;

	/*
	 * CQE zipping is currently defaulted to off. when it won't
	 * anymore we will consider the HW capability:
	 * "!!MLX5_CAP_GEN(mdev, cqe_compression)"
	 */
	priv->params.cqe_zipping_en = false;

	priv->mdev = mdev;
	priv->params.num_channels = num_comp_vectors;
	priv->params.channels_rsss = 1;
	priv->order_base_2_num_channels = FUNC4(num_comp_vectors);
	priv->queue_mapping_channel_mask =
	    FUNC5(num_comp_vectors) - 1;
	priv->num_tc = priv->params.num_tc;
	priv->default_vlan_prio = priv->params.default_vlan_prio;

	FUNC0(&priv->update_stats_work, mlx5e_update_stats_work);
	FUNC0(&priv->update_carrier_work, mlx5e_update_carrier_work);
	FUNC0(&priv->set_rx_mode_work, mlx5e_set_rx_mode_work);

	return (0);
}