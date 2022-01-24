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
typedef  int u32 ;
struct mlxfw_mfa2_file {int dummy; } ;
struct mlxfw_mfa2_component {int /*<<< orphan*/  index; } ;
struct mlxfw_dev {int /*<<< orphan*/  psid_size; int /*<<< orphan*/  psid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxfw_mfa2_component*) ; 
 int FUNC1 (struct mlxfw_mfa2_component*) ; 
 int FUNC2 (struct mlxfw_dev*,int,struct mlxfw_mfa2_component*) ; 
 int FUNC3 (struct mlxfw_mfa2_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct mlxfw_mfa2_component* FUNC4 (struct mlxfw_mfa2_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxfw_mfa2_component*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlxfw_dev *mlxfw_dev, u32 fwhandle,
				  struct mlxfw_mfa2_file *mfa2_file)
{
	u32 component_count;
	int err;
	int i;

	err = FUNC3(mfa2_file, mlxfw_dev->psid,
					      mlxfw_dev->psid_size,
					      &component_count);
	if (err) {
		FUNC6("Could not find device PSID in MFA2 file\n");
		return err;
	}

	for (i = 0; i < component_count; i++) {
		struct mlxfw_mfa2_component *comp;

		comp = FUNC4(mfa2_file, mlxfw_dev->psid,
						     mlxfw_dev->psid_size, i);
		if (FUNC0(comp))
			return FUNC1(comp);

		FUNC7("Flashing component type %d\n", comp->index);
		err = FUNC2(mlxfw_dev, fwhandle, comp);
		FUNC5(comp);
		if (err)
			return err;
	}
	return 0;
}