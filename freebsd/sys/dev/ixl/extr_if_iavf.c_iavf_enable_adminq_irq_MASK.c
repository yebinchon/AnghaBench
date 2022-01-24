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
struct i40e_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_VFGEN_RSTAT ; 
 int /*<<< orphan*/  I40E_VFINT_DYN_CTL01 ; 
 int I40E_VFINT_DYN_CTL01_INTENA_MASK ; 
 int I40E_VFINT_DYN_CTL01_ITR_INDX_MASK ; 
 int /*<<< orphan*/  I40E_VFINT_ICR0_ENA1 ; 
 int I40E_VFINT_ICR0_ENA1_ADMINQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct i40e_hw *hw)
{
	FUNC1(hw, I40E_VFINT_DYN_CTL01,
	    I40E_VFINT_DYN_CTL01_INTENA_MASK |
	    I40E_VFINT_DYN_CTL01_ITR_INDX_MASK);
	FUNC1(hw, I40E_VFINT_ICR0_ENA1, I40E_VFINT_ICR0_ENA1_ADMINQ_MASK);
	/* flush */
	FUNC0(hw, I40E_VFGEN_RSTAT);
}