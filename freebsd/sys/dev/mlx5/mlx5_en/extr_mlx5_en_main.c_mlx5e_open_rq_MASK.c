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
struct mlx5e_rq_param {int dummy; } ;
struct mlx5e_rq {int dummy; } ;
struct TYPE_2__ {int enabled; } ;
struct mlx5e_channel {TYPE_1__ rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RST ; 
 int FUNC0 (struct mlx5e_channel*,struct mlx5e_rq_param*,struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_rq*) ; 
 int FUNC3 (struct mlx5e_rq*,struct mlx5e_rq_param*) ; 
 int FUNC4 (struct mlx5e_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mlx5e_channel *c,
    struct mlx5e_rq_param *param,
    struct mlx5e_rq *rq)
{
	int err;

	err = FUNC0(c, param, rq);
	if (err)
		return (err);

	err = FUNC3(rq, param);
	if (err)
		goto err_destroy_rq;

	err = FUNC4(rq, MLX5_RQC_STATE_RST, MLX5_RQC_STATE_RDY);
	if (err)
		goto err_disable_rq;

	c->rq.enabled = 1;

	return (0);

err_disable_rq:
	FUNC2(rq);
err_destroy_rq:
	FUNC1(rq);

	return (err);
}