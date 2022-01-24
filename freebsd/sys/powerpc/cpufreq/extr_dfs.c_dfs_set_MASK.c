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
struct cf_setting {int freq; } ;
typedef  int register_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int HID1_DFS2 ; 
 int HID1_DFS4 ; 
 int /*<<< orphan*/  SPR_HID1 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(device_t dev, const struct cf_setting *set)
{
	register_t hid1;
	
	if (set == NULL)
		return (EINVAL);

	hid1 = FUNC1(SPR_HID1);
	hid1 &= ~(HID1_DFS2 | HID1_DFS4);

	if (set->freq == 5000)
		hid1 |= HID1_DFS2;
	else if (set->freq == 2500)
		hid1 |= HID1_DFS4;
	
	/*
	 * Now set the HID1 register with new values. Calling sequence
	 * taken from page 2-26 of the MPC7450 family CPU manual.
	 */

	FUNC3();
	FUNC2(SPR_HID1, hid1);
	FUNC3(); FUNC0();

	return (0);
}