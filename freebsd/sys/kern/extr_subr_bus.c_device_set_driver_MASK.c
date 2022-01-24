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
struct domainset {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int /*<<< orphan*/ * kobj_class_t ;
struct TYPE_7__ {scalar_t__ size; } ;
typedef  TYPE_1__ driver_t ;
typedef  TYPE_2__* device_t ;
struct TYPE_8__ {scalar_t__ state; int flags; TYPE_1__* driver; int /*<<< orphan*/ * softc; } ;

/* Variables and functions */
 int DF_EXTERNALSOFTC ; 
 struct domainset* FUNC0 (int) ; 
 struct domainset* FUNC1 () ; 
 scalar_t__ DS_ATTACHED ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_BUS_SC ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,int /*<<< orphan*/ ,struct domainset*,int) ; 
 int /*<<< orphan*/  null_class ; 

int
FUNC9(device_t dev, driver_t *driver)
{
	int domain;
	struct domainset *policy;

	if (dev->state >= DS_ATTACHED)
		return (EBUSY);

	if (dev->driver == driver)
		return (0);

	if (dev->softc && !(dev->flags & DF_EXTERNALSOFTC)) {
		FUNC5(dev->softc, M_BUS_SC);
		dev->softc = NULL;
	}
	FUNC4(dev, NULL);
	FUNC6((kobj_t) dev, NULL);
	dev->driver = driver;
	if (driver) {
		FUNC7((kobj_t) dev, (kobj_class_t) driver);
		if (!(dev->flags & DF_EXTERNALSOFTC) && driver->size > 0) {
			if (FUNC3(dev, &domain) == 0)
				policy = FUNC0(domain);
			else
				policy = FUNC1();
			dev->softc = FUNC8(driver->size, M_BUS_SC,
			    policy, M_NOWAIT | M_ZERO);
			if (!dev->softc) {
				FUNC6((kobj_t) dev, NULL);
				FUNC7((kobj_t) dev, &null_class);
				dev->driver = NULL;
				return (ENOMEM);
			}
		}
	} else {
		FUNC7((kobj_t) dev, &null_class);
	}

	FUNC2();
	return (0);
}