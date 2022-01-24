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

/* Variables and functions */

__attribute__((used)) static bool
FUNC0(uint8_t *addr)
{

	/*
	 * All-bits-zero and all-bits-one are a couple common cases of what
	 * might get read from unprogrammed eeprom or OTP data, weed them out.
	 */
	if ((addr[0] | addr[1] | addr[2] | addr[3] | addr[4] | addr[5]) == 0x00)
		return (false);
	if ((addr[0] & addr[1] & addr[2] & addr[3] & addr[4] & addr[5]) == 0xff)
		return (false);
	return (true);
}