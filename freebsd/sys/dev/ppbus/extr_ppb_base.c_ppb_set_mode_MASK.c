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
struct ppb_data {int mode; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppb_data* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PPB_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t bus, int mode)
{
	struct ppb_data *ppb = FUNC0(bus);
	int old_mode = FUNC4(bus);

	FUNC3(bus);
	if (FUNC1(FUNC2(bus), mode))
		return (-1);

	/* XXX yet device mode = ppbus mode = chipset mode */
	ppb->mode = (mode & PPB_MASK);

	return (old_mode);
}