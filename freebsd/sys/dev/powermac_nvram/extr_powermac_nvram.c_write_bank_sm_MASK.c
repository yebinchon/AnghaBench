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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 unsigned int NVRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ SM_FLASH_CMD_CLEAR_STATUS ; 
 scalar_t__ SM_FLASH_CMD_RESET ; 
 int /*<<< orphan*/  SM_FLASH_CMD_WRITE_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint8_t *bank, uint8_t *data)
{
	unsigned int i;

	for (i = 0; i < NVRAM_SIZE; i++) {
		FUNC0(bank + i, SM_FLASH_CMD_WRITE_SETUP);
		FUNC2(bank + i, data[i]);
		if (FUNC3(bank) != 0) {
			FUNC1(dev, "flash write error/timeout\n");
			break;
		}
	}

	FUNC2(bank, SM_FLASH_CMD_CLEAR_STATUS);
	FUNC2(bank, SM_FLASH_CMD_RESET);

	for (i = 0; i < NVRAM_SIZE; i++) {
		if (bank[i] != data[i]) {
			FUNC1(dev, "flash write has failed\n");
			return (-1);
		}
	}
	return (0);
}