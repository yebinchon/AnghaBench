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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  SM_FLASH_CMD_READ_STATUS ; 
 int SM_FLASH_STATUS_DONE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(uint8_t *bank)
{
	int i;

	for (i = 1000000; i != 0; i--) {
		FUNC1(bank, SM_FLASH_CMD_READ_STATUS);
		if (FUNC0(bank) & SM_FLASH_STATUS_DONE)
			return (0);
	}
	return (-1);
}