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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 unsigned int NVRAM_SIZE ; 
 int /*<<< orphan*/  SM_FLASH_CMD_CLEAR_STATUS ; 
 int /*<<< orphan*/  SM_FLASH_CMD_ERASE_CONFIRM ; 
 int /*<<< orphan*/  SM_FLASH_CMD_ERASE_SETUP ; 
 int /*<<< orphan*/  SM_FLASH_CMD_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t *bank)
{
	unsigned int i;

	FUNC1(bank, SM_FLASH_CMD_ERASE_SETUP);
	FUNC1(bank, SM_FLASH_CMD_ERASE_CONFIRM);

	if (FUNC2(bank) != 0) {
		FUNC0(dev, "flash erase timeout\n");
		return (-1);
	}

	FUNC1(bank, SM_FLASH_CMD_CLEAR_STATUS);
	FUNC1(bank, SM_FLASH_CMD_RESET);

	for (i = 0; i < NVRAM_SIZE; i++) {
		if (bank[i] != 0xff) {
			FUNC0(dev, "flash write has failed\n");
			return (-1);
		}
	}
	return (0);
}