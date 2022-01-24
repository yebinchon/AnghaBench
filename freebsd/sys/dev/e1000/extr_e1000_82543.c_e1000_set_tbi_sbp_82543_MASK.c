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
struct e1000_dev_spec_82543 {int /*<<< orphan*/  tbi_compatibility; } ;
struct TYPE_2__ {struct e1000_dev_spec_82543 _82543; } ;
struct e1000_hw {TYPE_1__ dev_spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TBI_SBP_ENABLED ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 

__attribute__((used)) static void FUNC2(struct e1000_hw *hw, bool state)
{
	struct e1000_dev_spec_82543 *dev_spec = &hw->dev_spec._82543;

	FUNC0("e1000_set_tbi_sbp_82543");

	if (state && FUNC1(hw))
		dev_spec->tbi_compatibility |= TBI_SBP_ENABLED;
	else
		dev_spec->tbi_compatibility &= ~TBI_SBP_ENABLED;

	return;
}