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
typedef  int u8 ;
struct ib_device {int (* get_port_immutable ) (struct ib_device*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * port_immutable; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*) ; 
 int FUNC2 (struct ib_device*) ; 
 int FUNC3 (struct ib_device*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ib_device*,int) ; 

__attribute__((used)) static int FUNC5(struct ib_device *device)
{
	int ret;
	u8 start_port = FUNC2(device);
	u8 end_port = FUNC1(device);
	u8 port;

	/**
	 * device->port_immutable is indexed directly by the port number to make
	 * access to this data as efficient as possible.
	 *
	 * Therefore port_immutable is declared as a 1 based array with
	 * potential empty slots at the beginning.
	 */
	device->port_immutable = FUNC0(sizeof(*device->port_immutable)
					 * (end_port + 1),
					 GFP_KERNEL);
	if (!device->port_immutable)
		return -ENOMEM;

	for (port = start_port; port <= end_port; ++port) {
		ret = device->get_port_immutable(device, port,
						 &device->port_immutable[port]);
		if (ret)
			return ret;

		if (FUNC4(device, port))
			return -EINVAL;
	}
	return 0;
}