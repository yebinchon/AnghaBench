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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int int16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AD7417_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC1(device_t dev, uint32_t addr, int *temp)
{
	uint16_t buf[2];
	uint16_t read;
	int err;

	err = FUNC0(dev, addr, AD7417_TEMP, buf);

	if (err < 0)
		return (-1);

	read = *((int16_t*)buf);

	/* The ADC is 10 bit, the resolution is 0.25 C.
	   The temperature is in tenth kelvin.
	*/
	*temp = (((int16_t)(read & 0xffc0)) >> 6) * 25 / 10;
	return (0);
}