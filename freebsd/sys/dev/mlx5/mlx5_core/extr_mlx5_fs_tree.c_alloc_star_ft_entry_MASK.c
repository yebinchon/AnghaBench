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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_flow_table {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; TYPE_3__* parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct mlx5_flow_rule {TYPE_2__ base; TYPE_1__ dest_attr; } ;
struct mlx5_flow_group {scalar_t__ num_ftes; scalar_t__ max_ftes; int /*<<< orphan*/  ftes; int /*<<< orphan*/  base; } ;
struct TYPE_6__ {int /*<<< orphan*/  list; int /*<<< orphan*/ * parent; } ;
struct fs_fte {int dests_size; TYPE_3__ base; int /*<<< orphan*/  dests; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct fs_fte* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct fs_fte*) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE ; 
 int /*<<< orphan*/  MLX5_FS_DEFAULT_FLOW_TAG ; 
 struct fs_fte* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_fte*) ; 
 struct mlx5_flow_rule* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fs_fte *FUNC7(struct mlx5_flow_table *ft,
					  struct mlx5_flow_group *fg,
					  u32 *match_value,
					  unsigned int index)
{
	int err;
	struct fs_fte *fte;
	struct mlx5_flow_rule *dst;

	if (fg->num_ftes == fg->max_ftes)
		return FUNC0(-ENOSPC);

	fte = FUNC2(MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
			   MLX5_FS_DEFAULT_FLOW_TAG, match_value, index);
	if (FUNC1(fte))
		return fte;

	/*create dst*/
	dst = FUNC4(sizeof(*dst), GFP_KERNEL);
	if (!dst) {
		err = -ENOMEM;
		goto free_fte;
	}

	fte->base.parent = &fg->base;
	fte->dests_size = 1;
	dst->dest_attr.type = MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE;
	dst->base.parent = &fte->base;
	FUNC5(&dst->base.list, &fte->dests);
	/* assumed that the callee creates the star rules sorted by index */
	FUNC6(&fte->base.list, &fg->ftes);
	fg->num_ftes++;

	return fte;

free_fte:
	FUNC3(fte);
	return FUNC0(err);
}