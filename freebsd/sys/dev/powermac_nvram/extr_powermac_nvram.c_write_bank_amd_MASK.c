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
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint8_t *bank, uint8_t *data)
{
	unsigned int i;

	for (i = 0; i < NVRAM_SIZE; i++) {
		/* Unlock 1 */
		FUNC0(bank + 0x555, 0xaa);
		/* Unlock 2 */
		FUNC0(bank + 0x2aa, 0x55);

		/* Write single word */
		FUNC0(bank + 0x555, 0xa0);
		FUNC0(bank + i, data[i]);
		if (FUNC2(bank) != 0) {
			FUNC1(dev, "flash write timeout\n");
			return -1;
		}
	}

	/* Reset */
	FUNC0(bank, 0xf0);

	for (i = 0; i < NVRAM_SIZE; i++) {
		if (bank[i] != data[i]) {
			FUNC1(dev, "flash write has failed\n");
			return -1;
		}
	}
	return 0;
}