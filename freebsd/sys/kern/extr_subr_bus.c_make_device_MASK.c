#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kobj_t ;
typedef  TYPE_1__* device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;
struct TYPE_9__ {int unit; int flags; int /*<<< orphan*/  state; int /*<<< orphan*/ * softc; int /*<<< orphan*/ * ivars; scalar_t__ order; scalar_t__ devflags; scalar_t__ busy; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * nameunit; int /*<<< orphan*/ * devclass; int /*<<< orphan*/ * driver; int /*<<< orphan*/  children; struct TYPE_9__* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int DF_ENABLED ; 
 int DF_FIXEDCLASS ; 
 int DF_QUIET ; 
 int DF_QUIET_CHILDREN ; 
 int DF_WILDCARD ; 
 int /*<<< orphan*/  DS_NOTPRESENT ; 
 int /*<<< orphan*/  M_BUS ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  bus_data_devices ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  devlink ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  null_class ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 

__attribute__((used)) static device_t
FUNC12(device_t parent, const char *name, int unit)
{
	device_t dev;
	devclass_t dc;

	FUNC1(("%s at %s as unit %d", name, FUNC0(parent), unit));

	if (name) {
		dc = FUNC6(name, NULL, TRUE);
		if (!dc) {
			FUNC11("make_device: can't find device class %s\n",
			    name);
			return (NULL);
		}
	} else {
		dc = NULL;
	}

	dev = FUNC10(sizeof(*dev), M_BUS, M_NOWAIT|M_ZERO);
	if (!dev)
		return (NULL);

	dev->parent = parent;
	FUNC2(&dev->children);
	FUNC9((kobj_t) dev, &null_class);
	dev->driver = NULL;
	dev->devclass = NULL;
	dev->unit = unit;
	dev->nameunit = NULL;
	dev->desc = NULL;
	dev->busy = 0;
	dev->devflags = 0;
	dev->flags = DF_ENABLED;
	dev->order = 0;
	if (unit == -1)
		dev->flags |= DF_WILDCARD;
	if (name) {
		dev->flags |= DF_FIXEDCLASS;
		if (FUNC5(dc, dev)) {
			FUNC8((kobj_t) dev, M_BUS);
			return (NULL);
		}
	}
	if (parent != NULL && FUNC7(parent))
		dev->flags |= DF_QUIET | DF_QUIET_CHILDREN;
	dev->ivars = NULL;
	dev->softc = NULL;

	dev->state = DS_NOTPRESENT;

	FUNC3(&bus_data_devices, dev, devlink);
	FUNC4();

	return (dev);
}