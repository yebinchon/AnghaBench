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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_CAP_ATOMIC ; 
 int /*<<< orphan*/  MLX5_CAP_DEBUG ; 
 int /*<<< orphan*/  MLX5_CAP_EOIB_OFFLOADS ; 
 int /*<<< orphan*/  MLX5_CAP_ESWITCH ; 
 int /*<<< orphan*/  MLX5_CAP_ESWITCH_FLOW_TABLE ; 
 int /*<<< orphan*/  MLX5_CAP_ETHERNET_OFFLOADS ; 
 int /*<<< orphan*/  MLX5_CAP_FLOW_TABLE ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_CAP_GENERAL ; 
 int /*<<< orphan*/  MLX5_CAP_ODP ; 
 int /*<<< orphan*/  MLX5_CAP_QOS ; 
 int /*<<< orphan*/  MLX5_CAP_ROCE ; 
 int /*<<< orphan*/  MLX5_CAP_SNAPSHOT ; 
 scalar_t__ MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET ; 
 scalar_t__ MLX5_CMD_HCA_CAP_PORT_TYPE_IB ; 
 int /*<<< orphan*/  atomic ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  eswitch_flow_table ; 
 int /*<<< orphan*/  eth_net_offloads ; 
 int /*<<< orphan*/  ipoib_enhanced_offloads ; 
 int /*<<< orphan*/  mcam_reg ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*) ; 
 int FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  nic_flow_table ; 
 int /*<<< orphan*/  pcam_reg ; 
 int /*<<< orphan*/  pg ; 
 int /*<<< orphan*/  port_type ; 
 int /*<<< orphan*/  qcam_reg ; 
 int /*<<< orphan*/  qos ; 
 int /*<<< orphan*/  roce ; 
 int /*<<< orphan*/  snapshot ; 
 int /*<<< orphan*/  vport_group_manager ; 

int FUNC6(struct mlx5_core_dev *dev)
{
	int err;

	err = FUNC1(dev, MLX5_CAP_GENERAL);
	if (err)
		return err;

	if (FUNC0(dev, eth_net_offloads)) {
		err = FUNC1(dev, MLX5_CAP_ETHERNET_OFFLOADS);
		if (err)
			return err;
	}

	if (FUNC0(dev, pg)) {
		err = FUNC1(dev, MLX5_CAP_ODP);
		if (err)
			return err;
	}

	if (FUNC0(dev, atomic)) {
		err = FUNC1(dev, MLX5_CAP_ATOMIC);
		if (err)
			return err;
	}

	if (FUNC0(dev, roce)) {
		err = FUNC1(dev, MLX5_CAP_ROCE);
		if (err)
			return err;
	}

	if ((FUNC0(dev, port_type) ==
	    MLX5_CMD_HCA_CAP_PORT_TYPE_ETHERNET &&
	    FUNC0(dev, nic_flow_table)) ||
	    (FUNC0(dev, port_type) == MLX5_CMD_HCA_CAP_PORT_TYPE_IB &&
	    FUNC0(dev, ipoib_enhanced_offloads))) {
		err = FUNC1(dev, MLX5_CAP_FLOW_TABLE);
		if (err)
			return err;
	}

	if (FUNC0(dev, eswitch_flow_table)) {
		err = FUNC1(dev, MLX5_CAP_ESWITCH_FLOW_TABLE);
		if (err)
			return err;
	}

	if (FUNC0(dev, vport_group_manager)) {
		err = FUNC1(dev, MLX5_CAP_ESWITCH);
		if (err)
			return err;
	}

	if (FUNC0(dev, snapshot)) {
		err = FUNC1(dev, MLX5_CAP_SNAPSHOT);
		if (err)
			return err;
	}

	if (FUNC0(dev, ipoib_enhanced_offloads)) {
		err = FUNC1(dev, MLX5_CAP_EOIB_OFFLOADS);
		if (err)
			return err;
	}

	if (FUNC0(dev, debug)) {
		err = FUNC1(dev, MLX5_CAP_DEBUG);
		if (err)
			return err;
	}

	if (FUNC0(dev, qos)) {
		err = FUNC1(dev, MLX5_CAP_QOS);
		if (err)
			return err;
	}

	if (FUNC0(dev, qcam_reg)) {
		err = FUNC5(dev);
		if (err)
			return err;
	}

	if (FUNC0(dev, mcam_reg)) {
		err = FUNC3(dev);
		if (err)
			return err;
	}

	if (FUNC0(dev, pcam_reg)) {
		err = FUNC4(dev);
		if (err)
			return err;
	}

	err = FUNC2(dev);
	if (err)
		return err;

	return 0;
}