#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  TYPE_2__* device_t ;
typedef  int /*<<< orphan*/  attachentropy ;
struct TYPE_18__ {int unit; int flags; scalar_t__ busy; int /*<<< orphan*/  state; int /*<<< orphan*/  devclass; TYPE_1__* driver; int /*<<< orphan*/  parent; } ;
struct TYPE_17__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int DF_ATTACHED_ONCE ; 
 int DF_DONENOMATCH ; 
 int DF_FIXEDCLASS ; 
 int /*<<< orphan*/  DS_ATTACHED ; 
 int /*<<< orphan*/  DS_ATTACHING ; 
 int /*<<< orphan*/  DS_BUSY ; 
 int /*<<< orphan*/  DS_NOTPRESENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (int (*) (TYPE_2__*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  RANDOM_ATTACH ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,int) ; 

int
FUNC17(device_t dev)
{
	uint64_t attachtime;
	uint16_t attachentropy;
	int error;

	if (FUNC16(dev->driver->name, dev->unit)) {
		FUNC5(dev);
		if (bootverbose)
			 FUNC8(dev, "disabled via hints entry\n");
		return (ENXIO);
	}

	FUNC11(dev);
	if (!FUNC6(dev))
		FUNC7(dev->parent, dev);
	attachtime = FUNC13();
	dev->state = DS_ATTACHING;
	if ((error = FUNC0(dev)) != 0) {
		FUNC14("device_attach: %s%d attach returned %d\n",
		    dev->driver->name, dev->unit, error);
		if (!(dev->flags & DF_FIXEDCLASS))
			FUNC4(dev->devclass, dev);
		(void)FUNC9(dev, NULL);
		FUNC10(dev);
		FUNC2(dev->busy == 0, ("attach failed but busy"));
		dev->state = DS_NOTPRESENT;
		return (error);
	}
	dev->flags |= DF_ATTACHED_ONCE;
	/* We only need the low bits of this time, but ranges from tens to thousands
	 * have been seen, so keep 2 bytes' worth.
	 */
	attachentropy = (uint16_t)(FUNC13() - attachtime);
	FUNC15(&attachentropy, sizeof(attachentropy), RANDOM_ATTACH);
	FUNC12(dev);
	if (dev->busy)
		dev->state = DS_BUSY;
	else
		dev->state = DS_ATTACHED;
	dev->flags &= ~DF_DONENOMATCH;
	FUNC1(device_attach, dev);
	FUNC3(dev);
	return (0);
}