#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* device_t ;
struct TYPE_15__ {scalar_t__ state; int flags; int /*<<< orphan*/  devclass; scalar_t__ parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int DF_FIXEDCLASS ; 
 scalar_t__ DS_ATTACHED ; 
 scalar_t__ DS_ATTACHING ; 
 scalar_t__ DS_BUSY ; 
 scalar_t__ DS_NOTPRESENT ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC3 (int (*) (TYPE_1__*),TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVHDEV_DETACH_BEGIN ; 
 int /*<<< orphan*/  EVHDEV_DETACH_COMPLETE ; 
 int /*<<< orphan*/  EVHDEV_DETACH_FAILED ; 
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int
FUNC12(device_t dev)
{
	int error;

	GIANT_REQUIRED;

	FUNC4(("%s", FUNC1(dev)));
	if (dev->state == DS_BUSY)
		return (EBUSY);
	if (dev->state == DS_ATTACHING) {
		FUNC7(dev, "device in attaching state! Deferring detach.\n");
		return (EBUSY);
	}
	if (dev->state != DS_ATTACHED)
		return (0);

	FUNC3(device_detach, dev, EVHDEV_DETACH_BEGIN);
	if ((error = FUNC2(dev)) != 0) {
		FUNC3(device_detach, dev,
		    EVHDEV_DETACH_FAILED);
		return (error);
	} else {
		FUNC3(device_detach, dev,
		    EVHDEV_DETACH_COMPLETE);
	}
	FUNC11(dev);
	if (!FUNC6(dev))
		FUNC7(dev, "detached\n");
	if (dev->parent)
		FUNC0(dev->parent, dev);

	if (!(dev->flags & DF_FIXEDCLASS))
		FUNC5(dev->devclass, dev);

	FUNC10(dev);
	dev->state = DS_NOTPRESENT;
	(void)FUNC8(dev, NULL);
	FUNC9(dev);

	return (0);
}