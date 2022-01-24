#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_priv {int num_tc; } ;
struct mlx5e_channel_param {int /*<<< orphan*/  rq; int /*<<< orphan*/  rx_cq; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* comp ) (TYPE_1__*) ;} ;
struct TYPE_8__ {TYPE_1__ mcq; } ;
struct TYPE_7__ {TYPE_3__ cq; } ;
struct mlx5e_channel {TYPE_2__ rq; int /*<<< orphan*/  ix; int /*<<< orphan*/  priv; TYPE_2__* sq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_channel*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5e_channel*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC6 (struct mlx5e_channel*,struct mlx5e_channel_param*) ; 
 int FUNC7 (struct mlx5e_channel*,struct mlx5e_channel_param*) ; 
 int /*<<< orphan*/  mlx5e_rq_zero_start ; 
 int /*<<< orphan*/  mlx5e_rx_cq_comp ; 
 int /*<<< orphan*/  mlx5e_sq_zero_start ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC9(struct mlx5e_priv *priv,
    struct mlx5e_channel_param *cparam,
    struct mlx5e_channel *c)
{
	int i, err;

	/* zero non-persistant data */
	FUNC0(&c->rq, mlx5e_rq_zero_start);
	for (i = 0; i != priv->num_tc; i++)
		FUNC0(&c->sq[i], mlx5e_sq_zero_start);

	/* open transmit completion queue */
	err = FUNC7(c, cparam);
	if (err)
		goto err_free;

	/* open receive completion queue */
	err = FUNC4(c->priv, &cparam->rx_cq, &c->rq.cq,
	    &mlx5e_rx_cq_comp, c->ix);
	if (err)
		goto err_close_tx_cqs;

	err = FUNC6(c, cparam);
	if (err)
		goto err_close_rx_cq;

	err = FUNC5(c, &cparam->rq, &c->rq);
	if (err)
		goto err_close_sqs;

	/* poll receive queue initially */
	c->rq.cq.mcq.comp(&c->rq.cq.mcq);

	return (0);

err_close_sqs:
	FUNC2(c);

err_close_rx_cq:
	FUNC1(&c->rq.cq);

err_close_tx_cqs:
	FUNC3(c);

err_free:
	return (err);
}