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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_4__ {int /*<<< orphan*/ * res_tree; } ;
struct TYPE_5__ {TYPE_1__ res_tracker; } ;
struct TYPE_6__ {TYPE_2__ master; } ;
struct mlx4_priv {TYPE_3__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;

/* Variables and functions */
 struct mlx4_priv* FUNC0 (struct mlx4_dev*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct mlx4_dev *dev, u64 res_id,
		      enum mlx4_resource type)
{
	struct mlx4_priv *priv = FUNC0(dev);

	return FUNC1(&priv->mfunc.master.res_tracker.res_tree[type],
				  res_id);
}