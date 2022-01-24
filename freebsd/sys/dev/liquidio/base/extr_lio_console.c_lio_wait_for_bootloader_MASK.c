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
typedef  scalar_t__ uint32_t ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR ; 
 scalar_t__ LIO_PCI_IO_BUF_OWNER_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int
FUNC4(struct octeon_device *oct,
			uint32_t wait_time_hundredths)
{
	FUNC0(oct, "waiting %d0 ms for bootloader\n",
		    wait_time_hundredths);

	if (FUNC1(oct))
		return (-1);

	while (wait_time_hundredths > 0 &&
	       FUNC2(oct,
				LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR) !=
	       LIO_PCI_IO_BUF_OWNER_HOST) {
		if (--wait_time_hundredths <= 0)
			return (-1);

		FUNC3(10);
	}

	return (0);
}