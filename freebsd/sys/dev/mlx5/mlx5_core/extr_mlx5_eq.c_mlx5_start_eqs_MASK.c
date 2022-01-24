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
typedef  unsigned long long u64 ;
struct mlx5_eq_table {int /*<<< orphan*/  cmd_eq; int /*<<< orphan*/  async_eq; int /*<<< orphan*/  pages_eq; } ;
struct TYPE_3__ {int /*<<< orphan*/ * uars; } ;
struct TYPE_4__ {TYPE_1__ uuari; struct mlx5_eq_table eq_table; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;

/* Variables and functions */
 unsigned long long MLX5_ASYNC_EVENT_MASK ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_EQ_VEC_ASYNC ; 
 int /*<<< orphan*/  MLX5_EQ_VEC_CMD ; 
 int /*<<< orphan*/  MLX5_EQ_VEC_PAGES ; 
 unsigned long long MLX5_EVENT_TYPE_CMD ; 
 unsigned long long MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT ; 
 unsigned long long MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT ; 
 unsigned long long MLX5_EVENT_TYPE_CODING_PORT_MODULE_EVENT ; 
 unsigned long long MLX5_EVENT_TYPE_FPGA_ERROR ; 
 unsigned long long MLX5_EVENT_TYPE_FPGA_QP_ERROR ; 
 unsigned long long MLX5_EVENT_TYPE_NIC_VPORT_CHANGE ; 
 int MLX5_EVENT_TYPE_PAGE_REQUEST ; 
 unsigned long long MLX5_EVENT_TYPE_TEMP_WARN_EVENT ; 
 int MLX5_NUM_ASYNC_EQE ; 
 int MLX5_NUM_CMD_EQE ; 
 int /*<<< orphan*/  dcbx ; 
 int /*<<< orphan*/  fpga ; 
 int /*<<< orphan*/  general_notification_event ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nic_vport_change_event ; 
 int /*<<< orphan*/  port_module_event ; 
 int /*<<< orphan*/  temp_warn_event ; 

int FUNC6(struct mlx5_core_dev *dev)
{
	struct mlx5_eq_table *table = &dev->priv.eq_table;
	u64 async_event_mask = MLX5_ASYNC_EVENT_MASK;
	int err;

	if (FUNC0(dev, port_module_event))
		async_event_mask |= (1ull <<
				     MLX5_EVENT_TYPE_CODING_PORT_MODULE_EVENT);

	if (FUNC0(dev, nic_vport_change_event))
		async_event_mask |= (1ull <<
				     MLX5_EVENT_TYPE_NIC_VPORT_CHANGE);

	if (FUNC0(dev, dcbx))
		async_event_mask |= (1ull <<
				     MLX5_EVENT_TYPE_CODING_DCBX_CHANGE_EVENT);

	if (FUNC0(dev, fpga))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_FPGA_ERROR) |
				    (1ull << MLX5_EVENT_TYPE_FPGA_QP_ERROR);

	if (FUNC0(dev, temp_warn_event))
		async_event_mask |= (1ull << MLX5_EVENT_TYPE_TEMP_WARN_EVENT);

	if (FUNC0(dev, general_notification_event)) {
		async_event_mask |= (1ull <<
		    MLX5_EVENT_TYPE_CODING_GENERAL_NOTIFICATION_EVENT);
	}

	err = FUNC4(dev, &table->cmd_eq, MLX5_EQ_VEC_CMD,
				 MLX5_NUM_CMD_EQE, 1ull << MLX5_EVENT_TYPE_CMD,
				 &dev->priv.uuari.uars[0]);
	if (err) {
		FUNC3(dev, "failed to create cmd EQ %d\n", err);
		return err;
	}

	FUNC1(dev);

	err = FUNC4(dev, &table->async_eq, MLX5_EQ_VEC_ASYNC,
				 MLX5_NUM_ASYNC_EQE, async_event_mask,
				 &dev->priv.uuari.uars[0]);
	if (err) {
		FUNC3(dev, "failed to create async EQ %d\n", err);
		goto err1;
	}

	err = FUNC4(dev, &table->pages_eq,
				 MLX5_EQ_VEC_PAGES,
				 /* TODO: sriov max_vf + */ 1,
				 1 << MLX5_EVENT_TYPE_PAGE_REQUEST,
				 &dev->priv.uuari.uars[0]);
	if (err) {
		FUNC3(dev, "failed to create pages EQ %d\n", err);
		goto err2;
	}

	return err;

err2:
	FUNC5(dev, &table->async_eq);

err1:
	FUNC2(dev);
	FUNC5(dev, &table->cmd_eq);
	return err;
}