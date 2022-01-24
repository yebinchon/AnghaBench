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
struct mlx5_ib_flow_prio {int /*<<< orphan*/  refcount; } ;
struct mlx5_ib_flow_handler {int /*<<< orphan*/  rule; int /*<<< orphan*/  list; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {int size; int /*<<< orphan*/  num_of_specs; } ;
typedef  int /*<<< orphan*/  flow_attr ;

/* Variables and functions */
 struct mlx5_ib_flow_handler* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mlx5_ib_flow_handler*) ; 
 int FUNC2 (struct mlx5_ib_flow_handler*) ; 
 struct mlx5_ib_flow_handler* FUNC3 (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr const*,struct mlx5_flow_destination*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_flow_handler*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlx5_ib_flow_handler *FUNC7(struct mlx5_ib_dev *dev,
							struct mlx5_ib_flow_prio *ft_rx,
							struct mlx5_ib_flow_prio *ft_tx,
							struct mlx5_flow_destination *dst)
{
	struct mlx5_ib_flow_handler *handler_rx;
	struct mlx5_ib_flow_handler *handler_tx;
	int err;
	static const struct ib_flow_attr flow_attr  = {
		.num_of_specs = 0,
		.size = sizeof(flow_attr)
	};

	handler_rx = FUNC3(dev, ft_rx, &flow_attr, dst);
	if (FUNC1(handler_rx)) {
		err = FUNC2(handler_rx);
		goto err;
	}

	handler_tx = FUNC3(dev, ft_tx, &flow_attr, dst);
	if (FUNC1(handler_tx)) {
		err = FUNC2(handler_tx);
		goto err_tx;
	}

	FUNC5(&handler_tx->list, &handler_rx->list);

	return handler_rx;

err_tx:
	FUNC6(handler_rx->rule);
	ft_rx->refcount--;
	FUNC4(handler_rx);
err:
	return FUNC0(err);
}