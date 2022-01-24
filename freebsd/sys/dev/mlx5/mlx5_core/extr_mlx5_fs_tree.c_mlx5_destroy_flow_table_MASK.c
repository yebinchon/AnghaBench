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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct mlx5_flow_table {int shared_refcount; TYPE_1__ base; } ;
struct mlx5_flow_root_namespace {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct fs_prio {int flags; int /*<<< orphan*/  shared_lock; TYPE_3__ base; } ;

/* Variables and functions */
 int ENODEV ; 
 int MLX5_CORE_FS_PRIO_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_flow_table*,struct fs_prio*) ; 
 struct mlx5_flow_root_namespace* FUNC1 (TYPE_3__*) ; 
 struct mlx5_core_dev* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_prio*,struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct mlx5_flow_root_namespace*,struct mlx5_flow_table*) ; 

int FUNC10(struct mlx5_flow_table *ft)
{
	int err = 0;
	struct fs_prio *prio;
	struct mlx5_flow_root_namespace *root;
	bool is_shared_prio;
	struct mlx5_core_dev *dev;

	FUNC3(prio, ft);
	root = FUNC1(&prio->base);
	dev = FUNC2(&prio->base);

	if (!root) {
		FUNC6(dev,
		    "flow steering failed to find root of priority %s",
		    prio->base.name);
		return -ENODEV;
	}

	is_shared_prio = prio->flags & MLX5_CORE_FS_PRIO_SHARED;
	if (is_shared_prio) {
		FUNC7(&prio->shared_lock);
		if (ft->shared_refcount > 1) {
			--ft->shared_refcount;
			FUNC4(&ft->base);
			FUNC8(&prio->shared_lock);
			return 0;
		}
	}

	FUNC7(&prio->base.lock);
	FUNC7(&ft->base.lock);

	err = FUNC9(root, ft);
	if (err)
		goto unlock_ft;

	/* delete two last entries */
	FUNC0(ft, prio);

	FUNC8(&ft->base.lock);
	FUNC5(&ft->base);
	FUNC8(&prio->base.lock);
	if (is_shared_prio)
		FUNC8(&prio->shared_lock);

	return err;

unlock_ft:
	FUNC8(&ft->base.lock);
	FUNC8(&prio->base.lock);
	if (is_shared_prio)
		FUNC8(&prio->shared_lock);

	return err;
}