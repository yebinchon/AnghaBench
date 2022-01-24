#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlx5_flow_table {int /*<<< orphan*/  id; int /*<<< orphan*/  type; int /*<<< orphan*/  vport; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  type; } ;
struct mlx5_flow_rule {TYPE_1__ base; int /*<<< orphan*/  clients_lock; int /*<<< orphan*/  clients_data; int /*<<< orphan*/  dest_attr; } ;
struct mlx5_flow_group {int /*<<< orphan*/  id; } ;
struct mlx5_flow_destination {int dummy; } ;
struct fs_fte {int /*<<< orphan*/  dests_size; int /*<<< orphan*/  dests; int /*<<< orphan*/  action; int /*<<< orphan*/  flow_tag; int /*<<< orphan*/  index; int /*<<< orphan*/  val; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_flow_rule* FUNC0 (int) ; 
 int /*<<< orphan*/  FS_TYPE_FLOW_DEST ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_flow_table*,struct mlx5_flow_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_flow_rule*) ; 
 struct mlx5_flow_rule* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct mlx5_flow_destination*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_flow_rule *FUNC11(struct fs_fte *fte,
					      struct mlx5_flow_group *fg,
					      struct mlx5_flow_destination *dest)
{
	struct mlx5_flow_table *ft;
	struct mlx5_flow_rule *dst;
	int err;

	dst = FUNC5(sizeof(*dst), GFP_KERNEL);
	if (!dst)
		return FUNC0(-ENOMEM);

	FUNC8(&dst->dest_attr, dest, sizeof(*dest));
	dst->base.type = FS_TYPE_FLOW_DEST;
	FUNC1(&dst->clients_data);
	FUNC10(&dst->clients_lock);
	FUNC3(ft, fg);
	/*Add dest to dests list- added as first element after the head*/
	FUNC6(&dst->base.list, &fte->dests);
	fte->dests_size++;
	err = FUNC9(FUNC2(&ft->base),
				  ft->vport,
				  &fte->status,
				  fte->val, ft->type,
				  ft->id, fte->index, fg->id, fte->flow_tag,
				  fte->action, fte->dests_size, &fte->dests);
	if (err)
		goto free_dst;

	FUNC7(&dst->base.list);

	return dst;

free_dst:
	FUNC7(&dst->base.list);
	FUNC4(dst);
	fte->dests_size--;
	return FUNC0(err);
}