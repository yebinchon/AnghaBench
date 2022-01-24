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
struct uart_phyp_softc {int /*<<< orphan*/  node; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (struct uart_phyp_softc*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const char *name;
	struct uart_phyp_softc sc;
	int err;

	name = FUNC1(dev);
	if (name == NULL || FUNC3(name, "vty") != 0)
		return (ENXIO);

	sc.node = FUNC2(dev);
	err = FUNC4(&sc);
	if (err != 0)
		return (err);

	FUNC0(dev, "POWER Hypervisor Virtual Serial Port");

	return (err);
}