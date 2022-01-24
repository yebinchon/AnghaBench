#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* d_name; } ;
struct tuntap_driver {TYPE_1__ cdevsw; int /*<<< orphan*/  clones; int /*<<< orphan*/  unrhdr; } ;
struct if_clone {int dummy; } ;
struct cdev {int dummy; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int EEXIST ; 
 int ENXIO ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int*,struct cdev**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC4 (struct tuntap_driver*,int,int /*<<< orphan*/ *,struct cdev**,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cdev*) ; 
 struct tuntap_driver* FUNC6 (int) ; 
 int FUNC7 (char*,int*,int*) ; 

__attribute__((used)) static int
FUNC8(struct if_clone *ifc, char *name, size_t len, caddr_t params)
{
	struct tuntap_driver *drv;
	struct cdev *dev;
	int err, i, tunflags, unit;

	tunflags = 0;
	/* The name here tells us exactly what we're creating */
	err = FUNC7(name, &unit, &tunflags);
	if (err != 0)
		return (err);

	drv = FUNC6(tunflags);
	if (drv == NULL)
		return (ENXIO);

	if (unit != -1) {
		/* If this unit number is still available that's okay. */
		if (FUNC1(drv->unrhdr, unit) == -1)
			return (EEXIST);
	} else {
		unit = FUNC0(drv->unrhdr);
	}

	FUNC3(name, IFNAMSIZ, "%s%d", drv->cdevsw.d_name, unit);

	/* find any existing device, or allocate new unit number */
	dev = NULL;
	i = FUNC2(&drv->clones, &drv->cdevsw, &unit, &dev, 0);
	/* No preexisting struct cdev *, create one */
	if (i != 0)
		i = FUNC4(drv, unit, NULL, &dev, name);
	if (i == 0)
		FUNC5(dev);

	return (i);
}