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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  PUC_IVAR_TYPE ; 
 uintptr_t PUC_TYPE_PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	device_t parent;
	uintptr_t type;

	parent = FUNC1(dev);
	if (FUNC0(parent, dev, PUC_IVAR_TYPE, &type))
		return (ENXIO);
	if (type != PUC_TYPE_PARALLEL)
		return (ENXIO);

	FUNC2(dev, "Parallel port");
	return (FUNC3(dev, 0));
}