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
struct TYPE_2__ {int tx_cq_moderation_mode; int /*<<< orphan*/  tx_cq_moderation_pkts; int /*<<< orphan*/  tx_cq_moderation_usec; int /*<<< orphan*/  log_sq_size; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; TYPE_1__ params; } ;
struct mlx5e_cq_param {void* cqc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CQ_PERIOD_MODE_START_FROM_CQE ; 
 int /*<<< orphan*/  MLX5_CQ_PERIOD_MODE_START_FROM_EQE ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cq_max_count ; 
 int /*<<< orphan*/  cq_period ; 
 int /*<<< orphan*/  cq_period_mode ; 
 int /*<<< orphan*/  cq_period_start_from_cqe ; 
 int /*<<< orphan*/  log_cq_size ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_cq_param*) ; 

__attribute__((used)) static void
FUNC3(struct mlx5e_priv *priv,
    struct mlx5e_cq_param *param)
{
	void *cqc = param->cqc;

	FUNC1(cqc, cqc, log_cq_size, priv->params.log_sq_size);
	FUNC1(cqc, cqc, cq_period, priv->params.tx_cq_moderation_usec);
	FUNC1(cqc, cqc, cq_max_count, priv->params.tx_cq_moderation_pkts);

	switch (priv->params.tx_cq_moderation_mode) {
	case 0:
		FUNC1(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
		break;
	default:
		if (FUNC0(priv->mdev, cq_period_start_from_cqe))
			FUNC1(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_CQE);
		else
			FUNC1(cqc, cqc, cq_period_mode, MLX5_CQ_PERIOD_MODE_START_FROM_EQE);
		break;
	}

	FUNC2(priv, param);
}