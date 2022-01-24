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
typedef  int u16 ;
struct TYPE_2__ {int word_page_size; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int IXGBE_EEPROM_PAGE_SIZE_MAX ; 
 scalar_t__ IXGBE_SUCCESS ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*,int,int,int*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*,int,int,int*) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw,
						 u16 offset)
{
	u16 data[IXGBE_EEPROM_PAGE_SIZE_MAX];
	s32 status = IXGBE_SUCCESS;
	u16 i;

	FUNC0("ixgbe_detect_eeprom_page_size_generic");

	for (i = 0; i < IXGBE_EEPROM_PAGE_SIZE_MAX; i++)
		data[i] = i;

	hw->eeprom.word_page_size = IXGBE_EEPROM_PAGE_SIZE_MAX;
	status = FUNC3(hw, offset,
					     IXGBE_EEPROM_PAGE_SIZE_MAX, data);
	hw->eeprom.word_page_size = 0;
	if (status != IXGBE_SUCCESS)
		goto out;

	status = FUNC2(hw, offset, 1, data);
	if (status != IXGBE_SUCCESS)
		goto out;

	/*
	 * When writing in burst more than the actual page size
	 * EEPROM address wraps around current page.
	 */
	hw->eeprom.word_page_size = IXGBE_EEPROM_PAGE_SIZE_MAX - data[0];

	FUNC1("Detected EEPROM page size = %d words.",
		  hw->eeprom.word_page_size);
out:
	return status;
}