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
struct port_info {int /*<<< orphan*/ * dev; } ;
struct adapter {struct port_info** port; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int MAX_NPORTS ; 
 struct adapter* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(device_t dev, int port, device_t *child)
{
	struct adapter *sc;
	struct port_info *pi;

	sc = FUNC0(dev);
	if (port < 0 || port >= MAX_NPORTS)
		return (EINVAL);
	pi = sc->port[port];
	if (pi == NULL || pi->dev == NULL)
		return (ENXIO);
	*child = pi->dev;
	return (0);
}