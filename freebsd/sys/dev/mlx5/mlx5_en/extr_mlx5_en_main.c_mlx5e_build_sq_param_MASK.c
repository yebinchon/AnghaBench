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
struct TYPE_3__ {int linear; scalar_t__ db_numa_node; scalar_t__ buf_numa_node; } ;
struct mlx5e_sq_param {TYPE_1__ wq; void* sqc; } ;
struct TYPE_4__ {int /*<<< orphan*/  log_sq_size; } ;
struct mlx5e_priv {int /*<<< orphan*/  pdn; TYPE_2__ params; } ;

/* Variables and functions */
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SEND_WQE_BB ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_wq_stride ; 
 int /*<<< orphan*/  log_wq_sz ; 
 int /*<<< orphan*/  pd ; 
 void* wq ; 

__attribute__((used)) static void
FUNC3(struct mlx5e_priv *priv,
    struct mlx5e_sq_param *param)
{
	void *sqc = param->sqc;
	void *wq = FUNC0(sqc, sqc, wq);

	FUNC1(wq, wq, log_wq_sz, priv->params.log_sq_size);
	FUNC1(wq, wq, log_wq_stride, FUNC2(MLX5_SEND_WQE_BB));
	FUNC1(wq, wq, pd, priv->pdn);

	param->wq.buf_numa_node = 0;
	param->wq.db_numa_node = 0;
	param->wq.linear = 1;
}