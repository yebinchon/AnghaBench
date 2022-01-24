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
typedef  int u_char ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int IIC_ENOADDR ; 
 int /*<<< orphan*/  IIC_FASTEST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC5(device_t bus, device_t dev)
{
	int error;
	int retval = 0;
	u_char oldaddr;

	retval += FUNC1(bus, dev);
	/* retrieve the interface I2C address */
	error = FUNC0(FUNC3(bus), IIC_FASTEST, 0, &oldaddr);
	if (error == IIC_ENOADDR) {
		retval += FUNC4(" on %s master-only\n",
				 FUNC2(bus));
	} else {
		/* restore the address */
		FUNC0(FUNC3(bus), IIC_FASTEST, oldaddr, NULL);

		retval += FUNC4(" on %s addr 0x%x\n",
				 FUNC2(bus), oldaddr & 0xff);
	}

	return (retval);
}