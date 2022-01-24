#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct net_dim_cq_moder {int /*<<< orphan*/  pkts; int /*<<< orphan*/  usec; } ;
struct TYPE_5__ {int /*<<< orphan*/  mcq; } ;
struct TYPE_4__ {int /*<<< orphan*/  profile_ix; scalar_t__ state; int /*<<< orphan*/  mode; int /*<<< orphan*/  work; } ;
struct mlx5e_rq {TYPE_2__ cq; int /*<<< orphan*/  mtx; TYPE_1__ dim; } ;
struct TYPE_6__ {int rx_cq_moderation_mode; int /*<<< orphan*/  rx_cq_moderation_pkts; int /*<<< orphan*/  rx_cq_moderation_usec; } ;
struct mlx5e_priv {TYPE_3__ params; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_DIM_DEFAULT_PROFILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CQ_PERIOD_MODE_START_FROM_CQE ; 
 int /*<<< orphan*/  MLX5_CQ_PERIOD_MODE_START_FROM_EQE ; 
 int /*<<< orphan*/  NET_DIM_CQ_PERIOD_MODE_DISABLED ; 
 int /*<<< orphan*/  NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE ; 
 int /*<<< orphan*/  NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cq_period_mode_modify ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,int /*<<< orphan*/ ,struct net_dim_cq_moder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct mlx5e_priv *priv, struct mlx5e_rq *rq)
{

	if (FUNC0(priv->mdev, cq_period_mode_modify)) {
		uint8_t cq_mode;
		uint8_t dim_mode;
		int retval;

		switch (priv->params.rx_cq_moderation_mode) {
		case 0:
		case 2:
			cq_mode = MLX5_CQ_PERIOD_MODE_START_FROM_EQE;
			dim_mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
			break;
		default:
			cq_mode = MLX5_CQ_PERIOD_MODE_START_FROM_CQE;
			dim_mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE;
			break;
		}

		/* tear down dynamic interrupt moderation */
		FUNC5(&rq->mtx);
		rq->dim.mode = NET_DIM_CQ_PERIOD_MODE_DISABLED;
		FUNC6(&rq->mtx);

		/* wait for dynamic interrupt moderation work task, if any */
		FUNC1(&rq->dim.work);

		if (priv->params.rx_cq_moderation_mode >= 2) {
			struct net_dim_cq_moder curr;

			FUNC4(priv, dim_mode, &curr);

			retval = FUNC3(priv->mdev, &rq->cq.mcq,
			    curr.usec, curr.pkts, cq_mode);

			/* set dynamic interrupt moderation mode and zero defaults */
			FUNC5(&rq->mtx);
			rq->dim.mode = dim_mode;
			rq->dim.state = 0;
			rq->dim.profile_ix = MLX5E_DIM_DEFAULT_PROFILE;
			FUNC6(&rq->mtx);
		} else {
			retval = FUNC3(priv->mdev, &rq->cq.mcq,
			    priv->params.rx_cq_moderation_usec,
			    priv->params.rx_cq_moderation_pkts,
			    cq_mode);
		}
		return (retval);
	}

	return (FUNC2(priv->mdev, &rq->cq.mcq,
	    priv->params.rx_cq_moderation_usec,
	    priv->params.rx_cq_moderation_pkts));
}