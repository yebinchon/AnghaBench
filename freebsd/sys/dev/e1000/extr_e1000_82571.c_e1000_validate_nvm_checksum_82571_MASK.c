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
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ nvm; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 scalar_t__ e1000_nvm_flash_hw ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 

__attribute__((used)) static s32 FUNC3(struct e1000_hw *hw)
{
	FUNC0("e1000_validate_nvm_checksum_82571");

	if (hw->nvm.type == e1000_nvm_flash_hw)
		FUNC1(hw);

	return FUNC2(hw);
}