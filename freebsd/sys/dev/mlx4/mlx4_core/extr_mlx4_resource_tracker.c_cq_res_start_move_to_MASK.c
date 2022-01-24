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
struct TYPE_6__ {int owner; scalar_t__ state; int from_state; int to_state; } ;
struct res_cq {TYPE_3__ com; int /*<<< orphan*/  ref_count; } ;
struct mlx4_resource_tracker {int /*<<< orphan*/ * res_tree; } ;
struct TYPE_4__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_5__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum res_cq_states { ____Placeholder_res_cq_states } res_cq_states ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int EPERM ; 
 size_t RES_CQ ; 
 int RES_CQ_ALLOCATED ; 
 int RES_CQ_BUSY ; 
 scalar_t__ RES_CQ_HW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 struct res_cq* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlx4_dev *dev, int slave, int cqn,
				enum res_cq_states state, struct res_cq **cq)
{
	struct mlx4_priv *priv = FUNC1(dev);
	struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
	struct res_cq *r;
	int err;

	FUNC4(FUNC2(dev));
	r = FUNC3(&tracker->res_tree[RES_CQ], cqn);
	if (!r) {
		err = -ENOENT;
	} else if (r->com.owner != slave) {
		err = -EPERM;
	} else if (state == RES_CQ_ALLOCATED) {
		if (r->com.state != RES_CQ_HW)
			err = -EINVAL;
		else if (FUNC0(&r->ref_count))
			err = -EBUSY;
		else
			err = 0;
	} else if (state != RES_CQ_HW || r->com.state != RES_CQ_ALLOCATED) {
		err = -EINVAL;
	} else {
		err = 0;
	}

	if (!err) {
		r->com.from_state = r->com.state;
		r->com.to_state = state;
		r->com.state = RES_CQ_BUSY;
		if (cq)
			*cq = r;
	}

	FUNC5(FUNC2(dev));

	return err;
}