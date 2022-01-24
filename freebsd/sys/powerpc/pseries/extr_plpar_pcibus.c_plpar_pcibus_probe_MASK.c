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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	phandle_t rtas;
 
	if (FUNC3(dev) == -1 || !FUNC4())
		return (ENXIO);

	rtas = FUNC0("/rtas");
	if (!FUNC1(rtas, "ibm,hypertas-functions"))
		return (ENXIO);

	FUNC2(dev, "POWER Hypervisor PCI bus");

	return (BUS_PROBE_SPECIFIC);
}