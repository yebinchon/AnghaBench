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
typedef  unsigned long long uint64_t ;
struct octeon_device {scalar_t__ app_mode; scalar_t__ watchdog_task; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_CN23XX_SLI_SCRATCH1 ; 
 scalar_t__ LIO_DRV_NIC_APP ; 
 struct octeon_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*) ; 
 unsigned long long FUNC6 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct octeon_device	*oct_dev = FUNC0(dev);

	FUNC3(oct_dev, "Stopping device\n");
	if (oct_dev->watchdog_task) {
		uint64_t	scratch1;

		FUNC1(oct_dev->watchdog_task, 0);

		scratch1 = FUNC6(oct_dev, LIO_CN23XX_SLI_SCRATCH1);
		scratch1 &= ~4ULL;
		FUNC8(oct_dev, LIO_CN23XX_SLI_SCRATCH1, scratch1);
	}

	if (oct_dev->app_mode && (oct_dev->app_mode == LIO_DRV_NIC_APP))
		FUNC7(oct_dev);

	/*
	 * Reset the octeon device and cleanup all memory allocated for
	 * the octeon device by  driver.
	 */
	FUNC2(oct_dev);

	FUNC4(oct_dev, "Device removed\n");

	/*
	 * This octeon device has been removed. Update the global
	 * data structure to reflect this. Free the device structure.
	 */
	FUNC5(oct_dev);
	return (0);
}