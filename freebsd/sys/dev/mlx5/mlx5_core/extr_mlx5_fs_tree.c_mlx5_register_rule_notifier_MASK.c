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
struct mlx5_flow_namespace {int /*<<< orphan*/  notifiers_rw_sem; int /*<<< orphan*/  list_notifiers; } ;
struct mlx5_flow_handler {int /*<<< orphan*/  list; struct mlx5_flow_namespace* ns; void* client_context; void* del_dst_cb; void* add_dst_cb; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  void* rule_event_fn ;
typedef  enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mlx5_flow_handler* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx5_flow_handler* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlx5_flow_namespace* FUNC4 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mlx5_flow_handler *FUNC6(struct mlx5_core_dev *dev,
								enum mlx5_flow_namespace_type ns_type,
								rule_event_fn add_cb,
								rule_event_fn del_cb,
								void *context)
{
	struct mlx5_flow_namespace *ns;
	struct mlx5_flow_handler *handler;

	ns = FUNC4(dev, ns_type);
	if (!ns)
		return FUNC0(-EINVAL);

	handler = FUNC2(sizeof(*handler), GFP_KERNEL);
	if (!handler)
		return FUNC0(-ENOMEM);

	handler->add_dst_cb = add_cb;
	handler->del_dst_cb = del_cb;
	handler->client_context = context;
	handler->ns = ns;
	FUNC1(&ns->notifiers_rw_sem);
	FUNC3(&handler->list, &ns->list_notifiers);
	FUNC5(&ns->notifiers_rw_sem);

	return handler;
}