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
struct mlx5_priv {int /*<<< orphan*/  uuari; } ;
struct mlx5_core_dev {int /*<<< orphan*/  intf_state_mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  intf_state; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_INIT_TIMEOUT_MILI ; 
 int /*<<< orphan*/  FW_INIT_WARN_MESSAGE_INTERVAL ; 
 int /*<<< orphan*/  FW_PRE_INIT_TIMEOUT_MILI ; 
 int /*<<< orphan*/  MLX5_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MLX5_DEVICE_STATE_UP ; 
 int /*<<< orphan*/  MLX5_INTERFACE_STATE_UP ; 
 int FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int FUNC6 (struct mlx5_core_dev*) ; 
 int FUNC7 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC8 (struct mlx5_core_dev*) ; 
 int FUNC9 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*) ; 
 int FUNC13 (struct mlx5_core_dev*) ; 
 int FUNC14 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC15 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_core_dev*) ; 
 int FUNC18 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx5_core_dev*,char*,...) ; 
 int FUNC20 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx5_core_dev*) ; 
 int FUNC23 (struct mlx5_core_dev*) ; 
 int FUNC24 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC28 (struct mlx5_core_dev*,struct mlx5_priv*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx5_core_dev*) ; 
 int FUNC30 (struct mlx5_core_dev*) ; 
 int FUNC31 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC33 (struct mlx5_core_dev*) ; 
 int FUNC34 (struct mlx5_core_dev*) ; 
 int FUNC35 (struct mlx5_core_dev*,int) ; 
 int FUNC36 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC37 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC38 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC39 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC43 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (struct mlx5_core_dev*) ; 
 int FUNC46 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC47(struct mlx5_core_dev *dev, struct mlx5_priv *priv,
			 bool boot)
{
	int err;

	FUNC40(&dev->intf_state_mutex);
	if (FUNC44(MLX5_INTERFACE_STATE_UP, &dev->intf_state)) {
		FUNC21(dev, "interface is up, NOP\n");
		goto out;
	}

	FUNC16(dev, "firmware version: %d.%d.%d\n",
	    FUNC3(dev), FUNC4(dev), FUNC5(dev));

	/*
	 * On load removing any previous indication of internal error,
	 * device is up
	 */
	dev->state = MLX5_DEVICE_STATE_UP;

	/* wait for firmware to accept initialization segments configurations
	*/
	err = FUNC46(dev, FW_PRE_INIT_TIMEOUT_MILI,
	    FW_INIT_WARN_MESSAGE_INTERVAL);
	if (err) {
		FUNC1(&dev->pdev->dev,
		    "Firmware over %d MS in pre-initializing state, aborting\n",
		    FW_PRE_INIT_TIMEOUT_MILI);
		goto out_err;
	}

	err = FUNC13(dev);
	if (err) {
		FUNC19(dev,
		    "Failed initializing command interface, aborting\n");
		goto out_err;
	}

	err = FUNC46(dev, FW_INIT_TIMEOUT_MILI, 0);
	if (err) {
		FUNC19(dev,
		    "Firmware over %d MS in initializing state, aborting\n",
		    FW_INIT_TIMEOUT_MILI);
		goto err_cmd_cleanup;
	}

	err = FUNC18(dev);
	if (err) {
		FUNC19(dev, "enable hca failed\n");
		goto err_cmd_cleanup;
	}

	err = FUNC20(dev);
	if (err) {
		FUNC19(dev, "failed to set issi\n");
		goto err_disable_hca;
	}

	err = FUNC31(dev);
	if (err) {
		FUNC19(dev, "mlx5_pagealloc_start failed\n");
		goto err_disable_hca;
	}

	err = FUNC35(dev, 1);
	if (err) {
		FUNC19(dev, "failed to allocate boot pages\n");
		goto err_pagealloc_stop;
	}

	err = FUNC43(dev);
	if (err) {
		FUNC19(dev, "set_hca_ctrl failed\n");
		goto reclaim_boot_pages;
	}

	err = FUNC6(dev);
	if (err) {
		FUNC19(dev, "handle_hca_cap failed\n");
		goto reclaim_boot_pages;
	}

	err = FUNC7(dev);
	if (err) {
		FUNC19(dev, "handle_hca_cap_atomic failed\n");
		goto reclaim_boot_pages;
	}

	err = FUNC35(dev, 0);
	if (err) {
		FUNC19(dev, "failed to allocate init pages\n");
		goto reclaim_boot_pages;
	}

	err = FUNC14(dev);
	if (err) {
		FUNC19(dev, "init hca failed\n");
		goto reclaim_boot_pages;
	}

	FUNC37(dev);

	if (boot && FUNC28(dev, priv)) {
		FUNC19(dev, "sw objs init failed\n");
		goto err_stop_poll;
	}

	err = FUNC23(dev);
	if (err) {
		FUNC19(dev, "enable msix failed\n");
		goto err_cleanup_once;
	}

	err = FUNC9(dev, &priv->uuari);
	if (err) {
		FUNC19(dev, "Failed allocating uar, aborting\n");
		goto err_disable_msix;
	}

	err = FUNC36(dev);
	if (err) {
		FUNC19(dev, "Failed to start pages and async EQs\n");
		goto err_free_uar;
	}

	err = FUNC0(dev);
	if (err) {
		FUNC19(dev, "Failed to alloc completion EQs\n");
		goto err_stop_eqs;
	}

	if (FUNC8(dev))
		FUNC19(dev, "Failed to map blue flame area\n");

	err = FUNC27(dev);
	if (err) {
		FUNC19(dev, "flow steering init %d\n", err);
		goto err_free_comp_eqs;
	}

	err = FUNC30(dev);
	if (err) {
		FUNC19(dev, "mpfs init failed %d\n", err);
		goto err_fs;
	}

	err = FUNC24(dev);
	if (err) {
		FUNC19(dev, "fpga device start failed %d\n", err);
		goto err_mpfs;
	}

	err = FUNC34(dev);
	if (err) {
		FUNC19(dev, "mlx5_register_device failed %d\n", err);
		goto err_fpga;
	}

	FUNC42(MLX5_INTERFACE_STATE_UP, &dev->intf_state);

out:
	FUNC41(&dev->intf_state_mutex);
	return 0;

err_fpga:
	FUNC25(dev);

err_mpfs:
	FUNC29(dev);

err_fs:
	FUNC10(dev);

err_free_comp_eqs:
	FUNC2(dev);
	FUNC45(dev);

err_stop_eqs:
	FUNC38(dev);

err_free_uar:
	FUNC26(dev, &priv->uuari);

err_disable_msix:
	FUNC22(dev);

err_cleanup_once:
	if (boot)
		FUNC11(dev);

err_stop_poll:
	FUNC39(dev, boot);
	if (FUNC15(dev)) {
		FUNC19(dev, "tear_down_hca failed, skip cleanup\n");
		goto out_err;
	}

reclaim_boot_pages:
	FUNC33(dev);

err_pagealloc_stop:
	FUNC32(dev);

err_disable_hca:
	FUNC17(dev);

err_cmd_cleanup:
	FUNC12(dev);

out_err:
	dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
	FUNC41(&dev->intf_state_mutex);

	return err;
}