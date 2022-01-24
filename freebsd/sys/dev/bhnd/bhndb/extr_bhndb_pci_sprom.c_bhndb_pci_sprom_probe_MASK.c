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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_NOWILDCARD ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bhndb_pci_driver ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	device_t	bridge;
	int		error;

	/* Our parent must be a PCI-BHND bridge */
	bridge = FUNC2(dev);
	if (FUNC1(bridge) != &bhndb_pci_driver)
		return (ENXIO);

	/* Defer to default driver implementation */
	if ((error = FUNC0(dev)) > 0)
		return (error);

	return (BUS_PROBE_NOWILDCARD);
}