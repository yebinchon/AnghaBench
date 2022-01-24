#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_srq_attr {int /*<<< orphan*/  flags; } ;
struct mlx5_core_srq {int /*<<< orphan*/  srqn; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_SRQ_FLAG_ERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_XRC_SRQC_STATE_GOOD ; 
 int /*<<< orphan*/  FUNC3 (void*,struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  query_xrc_srq_out ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  xrc_srq_context_entry ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *dev,
			     struct mlx5_core_srq *srq,
			     struct mlx5_srq_attr *out)
{
	u32 *xrcsrq_out;
	void *xrc_srqc;
	int err;

	xrcsrq_out = FUNC6(FUNC2(query_xrc_srq_out));
	if (!xrcsrq_out)
		return -ENOMEM;

	err = FUNC5(dev, srq->srqn, xrcsrq_out);
	if (err)
		goto out;

	xrc_srqc = FUNC0(query_xrc_srq_out, xrcsrq_out,
				xrc_srq_context_entry);
	FUNC3(xrc_srqc, out);
	if (FUNC1(xrc_srqc, xrc_srqc, state) != MLX5_XRC_SRQC_STATE_GOOD)
		out->flags |= MLX5_SRQ_FLAG_ERR;

out:
	FUNC4(xrcsrq_out);
	return err;
}