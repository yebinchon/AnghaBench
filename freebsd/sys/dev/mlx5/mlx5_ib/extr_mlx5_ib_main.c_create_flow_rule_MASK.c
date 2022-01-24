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
union ib_flow_spec {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_flow_prio {struct mlx5_flow_table* flow_table; int /*<<< orphan*/  refcount; } ;
struct mlx5_ib_flow_handler {struct mlx5_ib_flow_prio* prio; int /*<<< orphan*/  rule; int /*<<< orphan*/  list; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_spec {int /*<<< orphan*/  match_value; int /*<<< orphan*/  match_criteria; int /*<<< orphan*/  match_criteria_enable; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {unsigned int num_of_specs; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct mlx5_ib_flow_handler* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ; 
 int /*<<< orphan*/  MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO ; 
 int /*<<< orphan*/  MLX5_FS_DEFAULT_FLOW_TAG ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_flow_attr const*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_flow_handler*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_flow_spec*) ; 
 struct mlx5_ib_flow_handler* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_flow_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5_flow_destination*) ; 
 struct mlx5_flow_spec* FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static struct mlx5_ib_flow_handler *FUNC12(struct mlx5_ib_dev *dev,
						     struct mlx5_ib_flow_prio *ft_prio,
						     const struct ib_flow_attr *flow_attr,
						     struct mlx5_flow_destination *dst)
{
	struct mlx5_flow_table	*ft = ft_prio->flow_table;
	struct mlx5_ib_flow_handler *handler;
	struct mlx5_flow_spec *spec;
	const void *ib_flow = (const void *)flow_attr + sizeof(*flow_attr);
	unsigned int spec_index;
	u32 action;
	int err = 0;

	if (!FUNC5(flow_attr))
		return FUNC0(-EINVAL);

	spec = FUNC10(sizeof(*spec));
	handler = FUNC8(sizeof(*handler), GFP_KERNEL);
	if (!handler || !spec) {
		err = -ENOMEM;
		goto free;
	}

	FUNC1(&handler->list);

	for (spec_index = 0; spec_index < flow_attr->num_of_specs; spec_index++) {
		err = FUNC11(spec->match_criteria,
				      spec->match_value, ib_flow);
		if (err < 0)
			goto free;

		ib_flow += ((union ib_flow_spec *)ib_flow)->size;
	}

	spec->match_criteria_enable = FUNC4(spec->match_criteria);
	action = dst ? MLX5_FLOW_CONTEXT_ACTION_FWD_DEST :
		MLX5_FLOW_CONTEXT_ACTION_FWD_NEXT_PRIO;
	handler->rule = FUNC9(ft, spec->match_criteria_enable,
					   spec->match_criteria,
					   spec->match_value,
					   action,
					   MLX5_FS_DEFAULT_FLOW_TAG,
					   dst);

	if (FUNC2(handler->rule)) {
		err = FUNC3(handler->rule);
		goto free;
	}

	ft_prio->refcount++;
	handler->prio = ft_prio;

	ft_prio->flow_table = ft;
free:
	if (err)
		FUNC6(handler);
	FUNC7(spec);
	return err ? FUNC0(err) : handler;
}