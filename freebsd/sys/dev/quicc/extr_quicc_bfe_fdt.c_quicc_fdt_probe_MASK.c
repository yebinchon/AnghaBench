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
typedef  scalar_t__ pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  clock ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,uintptr_t) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	phandle_t par;
	pcell_t clock;

	if (!FUNC4(dev))
		return (ENXIO);

	if (!FUNC3(dev, "fsl,cpm2"))
		return (ENXIO);

	par = FUNC1(FUNC2(dev));
	if (FUNC0(par, "bus-frequency", &clock, sizeof(clock)) <= 0)
		clock = 0;

	return (FUNC5(dev, (uintptr_t)clock));
}