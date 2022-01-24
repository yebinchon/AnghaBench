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
typedef  int /*<<< orphan*/  u32 ;
struct mlxfw_mfa2_file {int dummy; } ;
struct mlxfw_dev {TYPE_1__* ops; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* fsm_lock ) (struct mlxfw_dev*,int /*<<< orphan*/ *) ;int (* fsm_activate ) (struct mlxfw_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* fsm_release ) (struct mlxfw_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlxfw_mfa2_file*) ; 
 int /*<<< orphan*/  MLXFW_FSM_STATE_LOCKED ; 
 int FUNC1 (struct mlxfw_mfa2_file*) ; 
 int FUNC2 (struct mlxfw_dev*,int /*<<< orphan*/ ,struct mlxfw_mfa2_file*) ; 
 int FUNC3 (struct mlxfw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxfw_mfa2_file*) ; 
 struct mlxfw_mfa2_file* FUNC6 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct mlxfw_dev*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mlxfw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlxfw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mlxfw_dev*,int /*<<< orphan*/ ) ; 

int FUNC14(struct mlxfw_dev *mlxfw_dev,
			 const struct firmware *firmware)
{
	struct mlxfw_mfa2_file *mfa2_file;
	u32 fwhandle;
	int err;

	if (!FUNC4(firmware)) {
		FUNC8("Firmware file is not MFA2\n");
		return -EINVAL;
	}

	mfa2_file = FUNC6(firmware);
	if (FUNC0(mfa2_file))
		return FUNC1(mfa2_file);

	FUNC9("Initialize firmware flash process\n");
	err = mlxfw_dev->ops->fsm_lock(mlxfw_dev, &fwhandle);
	if (err) {
		FUNC8("Could not lock the firmware FSM\n");
		goto err_fsm_lock;
	}

	err = FUNC3(mlxfw_dev, fwhandle,
				   MLXFW_FSM_STATE_LOCKED);
	if (err)
		goto err_state_wait_idle_to_locked;

	err = FUNC2(mlxfw_dev, fwhandle, mfa2_file);
	if (err)
		goto err_flash_components;

	FUNC7("Activate image\n");
	err = mlxfw_dev->ops->fsm_activate(mlxfw_dev, fwhandle);
	if (err) {
		FUNC8("Could not activate the downloaded image\n");
		goto err_fsm_activate;
	}

	err = FUNC3(mlxfw_dev, fwhandle, MLXFW_FSM_STATE_LOCKED);
	if (err)
		goto err_state_wait_activate_to_locked;

	FUNC7("Handle release\n");
	mlxfw_dev->ops->fsm_release(mlxfw_dev, fwhandle);

	FUNC9("Firmware flash done.\n");
	FUNC5(mfa2_file);
	return 0;

err_state_wait_activate_to_locked:
err_fsm_activate:
err_flash_components:
err_state_wait_idle_to_locked:
	mlxfw_dev->ops->fsm_release(mlxfw_dev, fwhandle);
err_fsm_lock:
	FUNC5(mfa2_file);
	return err;
}