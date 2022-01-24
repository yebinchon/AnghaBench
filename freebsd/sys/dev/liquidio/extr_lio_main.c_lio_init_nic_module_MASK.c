#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int gmxport; } ;
struct octeon_device {int ifcount; TYPE_1__ props; } ;
struct lio_if_props {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*) ; 
 int FUNC5 (struct octeon_device*) ; 

__attribute__((used)) static int
FUNC6(struct octeon_device *oct)
{
	int	num_nic_ports = FUNC0(FUNC4(oct));
	int	retval = 0;

	FUNC2(oct, "Initializing network interfaces\n");

	/*
	 * only default iq and oq were initialized
	 * initialize the rest as well
	 */

	/* run port_config command for each port */
	oct->ifcount = num_nic_ports;

	FUNC1(&oct->props, sizeof(struct lio_if_props));

	oct->props.gmxport = -1;

	retval = FUNC5(oct);
	if (retval) {
		FUNC3(oct, "Setup NIC devices failed\n");
		goto lio_init_failure;
	}

	FUNC2(oct, "Network interfaces ready\n");

	return (retval);

lio_init_failure:

	oct->ifcount = 0;

	return (retval);
}