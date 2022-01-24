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
struct res_common {int owner; int /*<<< orphan*/  from_state; int /*<<< orphan*/  state; } ;
struct mlx4_resource_tracker {int /*<<< orphan*/ * res_tree; } ;
struct TYPE_3__ {struct mlx4_resource_tracker res_tracker; } ;
struct TYPE_4__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*) ; 
 struct res_common* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct mlx4_dev *dev, int slave,
			   enum mlx4_resource type, int id)
{
	struct mlx4_priv *priv = FUNC0(dev);
	struct mlx4_resource_tracker *tracker = &priv->mfunc.master.res_tracker;
	struct res_common *r;

	FUNC3(FUNC1(dev));
	r = FUNC2(&tracker->res_tree[type], id);
	if (r && (r->owner == slave))
		r->state = r->from_state;
	FUNC4(FUNC1(dev));
}