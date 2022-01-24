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
typedef  int pcell_t ;
typedef  int /*<<< orphan*/  hart ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC3(device_t dev, phandle_t intc)
{
	int hart;

	/* Check the interrupt controller layout. */
	if (FUNC1(intc, "#interrupt-cells", &hart,
	    sizeof(hart)) == -1) {
		FUNC2(dev,
		    "Could not find #interrupt-cells for phandle %u\n", intc);
		return (-1);
	}

	/*
	 * The parent of the interrupt-controller is the CPU we are
	 * interested in, so search for its hart ID.
	 */
	if (FUNC1(FUNC0(intc), "reg", (pcell_t *)&hart,
	    sizeof(hart)) == -1) {
		FUNC2(dev, "Could not find hartid\n");
		return (-1);
	}

	return (hart);
}