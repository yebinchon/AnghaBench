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
typedef  scalar_t__ u64 ;
struct res_common {int owner; int /*<<< orphan*/  list; int /*<<< orphan*/  node; } ;
struct mlx4_resource_tracker {int /*<<< orphan*/ * res_tree; } ;
struct TYPE_3__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct res_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct res_common*,int,int) ; 
 struct res_common* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct mlx4_dev *dev, int slave, u64 base, int count,
			 enum mlx4_resource type, int extra)
{
	u64 i;
	int err;
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
	struct res_common *r;

	FUNC7(FUNC3(dev));
	for (i = base; i < base + count; ++i) {
		r = FUNC6(&tracker->res_tree[type], i);
		if (!r) {
			err = -ENOENT;
			goto out;
		}
		if (r->owner != slave) {
			err = -EPERM;
			goto out;
		}
		err = FUNC5(r, type, extra);
		if (err)
			goto out;
	}

	for (i = base; i < base + count; ++i) {
		r = FUNC6(&tracker->res_tree[type], i);
		FUNC4(&r->node, &tracker->res_tree[type]);
		FUNC1(&r->list);
		FUNC0(r);
	}
	err = 0;

out:
	FUNC8(FUNC3(dev));

	return err;
}