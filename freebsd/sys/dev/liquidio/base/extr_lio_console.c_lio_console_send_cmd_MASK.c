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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR ; 
 int /*<<< orphan*/  LIO_BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR ; 
 int /*<<< orphan*/  LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR ; 
 int LIO_BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN ; 
 int LIO_PCI_IO_BUF_OWNER_OCTEON ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(struct octeon_device *oct, char *cmd_str,
		     uint32_t wait_hundredths)
{
	uint32_t	len = (uint32_t) FUNC7(cmd_str);

	FUNC0(oct, "sending \"%s\" to bootloader\n", cmd_str);

	if (len > LIO_BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN - 1) {
		FUNC1(oct, "Command string too long, max length is: %d\n",
			    LIO_BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN - 1);
		return (-1);
	}

	if (FUNC5(oct, wait_hundredths)) {
		FUNC1(oct, "Bootloader not ready for command.\n");
		return (-1);
	}

	/* Write command to bootloader */
	FUNC3();
	FUNC2(oct, LIO_BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR,
			       (uint8_t *) cmd_str, len);
	FUNC6(oct, LIO_BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR,
			       len);
	FUNC6(oct, LIO_BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR,
			       LIO_PCI_IO_BUF_OWNER_OCTEON);

	/*
	 * Bootloader should accept command very quickly if it really was
	 * ready
	 */
	if (FUNC5(oct, 200)) {
		FUNC4();
		FUNC1(oct, "Bootloader did not accept command.\n");
		return (-1);
	}

	FUNC4();
	return (0);
}