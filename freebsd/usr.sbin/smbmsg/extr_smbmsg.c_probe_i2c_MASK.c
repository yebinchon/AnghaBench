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
struct smbcmd {unsigned char slave; } ;

/* Variables and functions */
 int IS_READABLE ; 
 int IS_WRITEABLE ; 
 unsigned char MAX_I2C_ADDR ; 
 unsigned char MIN_I2C_ADDR ; 
 int /*<<< orphan*/  SMB_QUICK_WRITE ; 
 int /*<<< orphan*/  SMB_RECVB ; 
 char* dev ; 
 int /*<<< orphan*/  fd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smbcmd*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3(void)
{
	unsigned char addr;
	int flags;
#define IS_READABLE	1
#define IS_WRITEABLE	2
	struct smbcmd c;

	FUNC1("Probing for devices on %s:\n", dev);

	for (addr = MIN_I2C_ADDR; addr < MAX_I2C_ADDR; addr += 2) {
		c.slave = addr;
		flags = 0;
		if (FUNC0(fd, SMB_RECVB, &c) != -1)
			flags = IS_READABLE;
		if (FUNC0(fd, SMB_QUICK_WRITE, &c) != -1)
			flags |= IS_WRITEABLE;
		if (flags != 0) {
			FUNC1("Device @0x%02x: ", addr);
			if (flags & IS_READABLE)
				FUNC2('r');
			if (flags & IS_WRITEABLE)
				FUNC2('w');
			FUNC2('\n');
		}
	}
}