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
struct firmware {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FIRMWARE_UNLOAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 struct firmware* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlx5_auto_fw_update ; 
 int FUNC3 (struct mlx5_core_dev*,struct firmware const*) ; 

__attribute__((used)) static int
FUNC4(struct mlx5_core_dev *dev)
{
	const struct firmware *fw;
	int err;

	FUNC0("hw.mlx5.auto_fw_update", &mlx5_auto_fw_update);
	if (!mlx5_auto_fw_update)
		return (0);
	fw = FUNC1("mlx5fw_mfa");
	if (fw) {
		err = FUNC3(dev, fw);
		FUNC2(fw, FIRMWARE_UNLOAD);
	}
	else
		return (-ENOENT);

	return err;
}