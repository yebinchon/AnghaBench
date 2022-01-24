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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  I40E_VFGEN_RSTAT ; 
 int I40E_VFGEN_RSTAT_VFR_STATE_MASK ; 
 int VIRTCHNL_VFR_COMPLETED ; 
 int VIRTCHNL_VFR_VFACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct i40e_hw *hw)
{
	u32 reg;

	/* Wait up to ~10 seconds */
	for (int i = 0; i < 100; i++) {
		reg = FUNC1(hw, I40E_VFGEN_RSTAT) &
		    I40E_VFGEN_RSTAT_VFR_STATE_MASK;

                if ((reg == VIRTCHNL_VFR_VFACTIVE) ||
		    (reg == VIRTCHNL_VFR_COMPLETED))
			return (0);
		FUNC0(100);
	}

	return (EBUSY);
}