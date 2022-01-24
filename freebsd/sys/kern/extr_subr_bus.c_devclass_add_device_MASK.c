#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
typedef  TYPE_2__* devclass_t ;
struct TYPE_10__ {char* name; TYPE_1__** devices; } ;
struct TYPE_9__ {size_t unit; int /*<<< orphan*/ * nameunit; TYPE_2__* devclass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int ENOMEM ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  M_BUS ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_2__*,TYPE_1__*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC7(devclass_t dc, device_t dev)
{
	int buflen, error;

	FUNC2(("%s in devclass %s", FUNC1(dev), FUNC0(dc)));

	buflen = FUNC6(NULL, 0, "%s%d$", dc->name, INT_MAX);
	if (buflen < 0)
		return (ENOMEM);
	dev->nameunit = FUNC5(buflen, M_BUS, M_NOWAIT|M_ZERO);
	if (!dev->nameunit)
		return (ENOMEM);

	if ((error = FUNC3(dc, dev, &dev->unit)) != 0) {
		FUNC4(dev->nameunit, M_BUS);
		dev->nameunit = NULL;
		return (error);
	}
	dc->devices[dev->unit] = dev;
	dev->devclass = dc;
	FUNC6(dev->nameunit, buflen, "%s%d", dc->name, dev->unit);

	return (0);
}