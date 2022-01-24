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
struct i40e_hw {int dummy; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*) ; 
 int /*<<< orphan*/  IXL_I2C_T_HIGH ; 
 int /*<<< orphan*/  IXL_I2C_T_LOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixl_pf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixl_pf*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixl_pf*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixl_pf*,int*,int) ; 
 int FUNC8 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ixl_pf *pf)
{
	struct i40e_hw *hw = &pf->hw;
	u32 i2cctl = FUNC8(hw, FUNC1(hw));
	u32 i;

	FUNC0("ixl_i2c_bus_clear");

	FUNC3(pf);

	FUNC7(pf, &i2cctl, 1);

	for (i = 0; i < 9; i++) {
		FUNC6(pf, &i2cctl);

		/* Min high period of clock is 4us */
		FUNC2(IXL_I2C_T_HIGH);

		FUNC5(pf, &i2cctl);

		/* Min low period of clock is 4.7us*/
		FUNC2(IXL_I2C_T_LOW);
	}

	FUNC3(pf);

	/* Put the i2c bus back to default state */
	FUNC4(pf);
}