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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct i40e_hw *hw, int id)
{
	FUNC2(hw, FUNC0(id),
	    I40E_VFINT_DYN_CTLN1_ITR_INDX_MASK);
	FUNC1(hw, I40E_VFGEN_RSTAT);
}