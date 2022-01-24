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
typedef  void u32 ;
struct mlx5_srq_attr {int /*<<< orphan*/  flags; } ;
struct mlx5_core_srq {int /*<<< orphan*/  srqn; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_RMPC_STATE_RDY ; 
 int /*<<< orphan*/  MLX5_SRQ_FLAG_ERR ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct mlx5_srq_attr*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 void* query_rmp_out ; 
 int /*<<< orphan*/  rmp_context ; 
 int /*<<< orphan*/  state ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq,
			 struct mlx5_srq_attr *out)
{
	u32 *rmp_out;
	void *rmpc;
	int err;

	rmp_out =  FUNC6(FUNC2(query_rmp_out));
	if (!rmp_out)
		return -ENOMEM;

	err = FUNC5(dev, srq->srqn, rmp_out);
	if (err)
		goto out;

	rmpc = FUNC0(query_rmp_out, rmp_out, rmp_context);
	FUNC3(FUNC0(rmpc, rmpc, wq), out);
	if (FUNC1(rmpc, rmpc, state) != MLX5_RMPC_STATE_RDY)
		out->flags |= MLX5_SRQ_FLAG_ERR;

out:
	FUNC4(rmp_out);
	return 0;
}