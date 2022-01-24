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
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_types; scalar_t__ active; } ;
struct mlx5_flow_table {TYPE_3__ base; TYPE_1__ autogroup; int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  vport; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct mlx5_flow_group {int start_index; int max_ftes; int id; TYPE_2__ base; } ;
struct mlx5_core_dev {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 struct mlx5_flow_group* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,char*,int) ; 
 struct mlx5_flow_group* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC6 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 

__attribute__((used)) static struct mlx5_flow_group *FUNC10(struct mlx5_core_dev *dev,
					    struct mlx5_flow_table *ft,
					    struct list_head *prev,
					    u32 *fg_in,
					    int refcount)
{
	struct mlx5_flow_group *fg;
	int err;
	unsigned int end_index;
	char name[20];

	fg = FUNC3(fg_in);
	if (FUNC1(fg))
		return fg;

	end_index = fg->start_index + fg->max_ftes - 1;
	err =  FUNC6(dev, fg_in,
				     ft->vport, ft->type, ft->id,
				     &fg->id);
	if (err)
		goto free_fg;

	FUNC7(&ft->base.lock);
	if (ft->autogroup.active)
		ft->autogroup.num_types++;

	FUNC9(name, sizeof(name), "group_%u", fg->id);
	/*Add node to tree*/
	FUNC2(&fg->base, &ft->base, name, refcount);
	/*Add node to group list*/
	FUNC5(&fg->base.list, prev);
	FUNC8(&ft->base.lock);

	return fg;

free_fg:
	FUNC4(fg);
	return FUNC0(err);
}