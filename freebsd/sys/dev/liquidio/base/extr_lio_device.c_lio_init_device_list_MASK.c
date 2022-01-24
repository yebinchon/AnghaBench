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
 int LIO_MAX_DEVICES ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  octeon_device ; 
 int /*<<< orphan*/  octeon_devices_lock ; 

void
FUNC3(int conf_type)
{
	int	i;

	FUNC0(octeon_device, (sizeof(void *) * LIO_MAX_DEVICES));
	for (i = 0; i < LIO_MAX_DEVICES; i++)
		FUNC2(i, conf_type);
	FUNC1(&octeon_devices_lock, "octeon_devices_lock", NULL, MTX_DEF);
}