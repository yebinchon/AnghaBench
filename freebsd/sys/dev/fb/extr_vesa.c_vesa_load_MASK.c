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

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/ * vesa_adp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ vesa_init_done ; 

__attribute__((used)) static int
FUNC2(void)
{
	int error;

	if (vesa_init_done)
		return (0);

	/* locate a VGA adapter */
	vesa_adp = NULL;
	error = FUNC1(0);

	if (error == 0)
		FUNC0(bootverbose);

	/* Don't return ENODEV, the upper layers will whine. */
	if (error == ENODEV) {
		error = 0;
		vesa_adp = NULL;
	}

	return (error);
}