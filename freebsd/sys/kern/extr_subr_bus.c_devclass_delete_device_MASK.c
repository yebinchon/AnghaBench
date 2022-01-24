#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
typedef  TYPE_2__* devclass_t ;
struct TYPE_8__ {TYPE_1__** devices; } ;
struct TYPE_7__ {size_t unit; int flags; int /*<<< orphan*/ * nameunit; TYPE_2__* devclass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int DF_WILDCARD ; 
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(devclass_t dc, device_t dev)
{
	if (!dc || !dev)
		return (0);

	FUNC2(("%s in devclass %s", FUNC1(dev), FUNC0(dc)));

	if (dev->devclass != dc || dc->devices[dev->unit] != dev)
		FUNC4("devclass_delete_device: inconsistent device class");
	dc->devices[dev->unit] = NULL;
	if (dev->flags & DF_WILDCARD)
		dev->unit = -1;
	dev->devclass = NULL;
	FUNC3(dev->nameunit, M_BUS);
	dev->nameunit = NULL;

	return (0);
}