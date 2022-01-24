#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_sq_param {int dummy; } ;
struct mlx5e_sq {int cev_factor; int /*<<< orphan*/  running; } ;
struct mlx5e_channel {TYPE_2__* priv; } ;
struct TYPE_3__ {int tx_completion_fact; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tisn; TYPE_1__ params_ethtool; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_SQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_SQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlx5e_channel*,int,struct mlx5e_sq_param*,struct mlx5e_sq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_sq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_sq*) ; 
 int FUNC4 (struct mlx5e_sq*,struct mlx5e_sq_param*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5e_sq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct mlx5e_channel *c,
    int tc,
    struct mlx5e_sq_param *param,
    struct mlx5e_sq *sq)
{
	int err;

	sq->cev_factor = c->priv->params_ethtool.tx_completion_fact;

	/* ensure the TX completion event factor is not zero */
	if (sq->cev_factor == 0)
		sq->cev_factor = 1;

	err = FUNC1(c, tc, param, sq);
	if (err)
		return (err);

	err = FUNC4(sq, param, c->priv->tisn[tc]);
	if (err)
		goto err_destroy_sq;

	err = FUNC5(sq, MLX5_SQC_STATE_RST, MLX5_SQC_STATE_RDY);
	if (err)
		goto err_disable_sq;

	FUNC0(sq->running, 1);

	return (0);

err_disable_sq:
	FUNC3(sq);
err_destroy_sq:
	FUNC2(sq);

	return (err);
}