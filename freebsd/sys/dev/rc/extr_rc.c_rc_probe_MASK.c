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
typedef  int u_int ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int*) ; 
 int* rc_ports ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	u_int port;
	int i, found;

	/*
	 * We don't know of any PnP ID's for these cards.
	 */
	if (FUNC2(dev) != 0)
		return (ENXIO);

	/*
	 * We have to have an IO port hint that is valid.
	 */
	port = FUNC3(dev);
	if (port == -1)
		return (ENXIO);
	found = 0;
	for (i = 0; i < FUNC4(rc_ports); i++)
		if (rc_ports[i] == port) {
			found = 1;
			break;
		}
	if (!found)
		return (ENXIO);

	/*
	 * We have to have an IRQ hint.
	 */
	if (FUNC1(dev) == -1)
		return (ENXIO);

	FUNC0(dev, "SDL Riscom/8");
	return (0);
}