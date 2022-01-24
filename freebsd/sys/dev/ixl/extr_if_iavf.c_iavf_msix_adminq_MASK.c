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
struct iavf_sc {int /*<<< orphan*/  admin_irq; struct i40e_hw hw; } ;

/* Variables and functions */
 int FALSE ; 
 int FILTER_HANDLED ; 
 int FILTER_SCHEDULE_THREAD ; 
 int /*<<< orphan*/  I40E_VFINT_ICR01 ; 
 int I40E_VFINT_ICR0_ADMINQ_MASK ; 
 int /*<<< orphan*/  I40E_VFINT_ICR0_ENA1 ; 
 int I40E_VFINT_ICR0_ENA_ADMINQ_MASK ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(void *arg)
{
	struct iavf_sc	*sc = arg;
	struct i40e_hw	*hw = &sc->hw;
	u32		reg, mask;
	bool		do_task = FALSE;

	++sc->admin_irq;

        reg = FUNC1(hw, I40E_VFINT_ICR01);
	/*
	 * For masking off interrupt causes that need to be handled before
	 * they can be re-enabled
	 */
        mask = FUNC1(hw, I40E_VFINT_ICR0_ENA1);

	/* Check on the cause */
	if (reg & I40E_VFINT_ICR0_ADMINQ_MASK) {
		mask &= ~I40E_VFINT_ICR0_ENA_ADMINQ_MASK;
		do_task = TRUE;
	}

	FUNC2(hw, I40E_VFINT_ICR0_ENA1, mask);
	FUNC0(hw);

	if (do_task)
		return (FILTER_SCHEDULE_THREAD);
	else
		return (FILTER_HANDLED);
}