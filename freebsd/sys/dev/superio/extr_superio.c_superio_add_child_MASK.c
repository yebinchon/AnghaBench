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
typedef  int /*<<< orphan*/  u_int ;
struct superio_devinfo {int ldn; int /*<<< orphan*/  resources; int /*<<< orphan*/ * dev; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SUPERIO_DEV_NONE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct superio_devinfo*) ; 
 struct superio_devinfo* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t dev, u_int order, const char *name, int unit)
{
	struct superio_devinfo *dinfo;
	device_t child;

	child = FUNC0(dev, order, name, unit);
	if (child == NULL)
		return (NULL);
	dinfo = FUNC3(sizeof(*dinfo), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (dinfo == NULL) {
		FUNC1(dev, child);
		return (NULL);
	}
	dinfo->ldn = 0xff;
	dinfo->type = SUPERIO_DEV_NONE;
	dinfo->dev = child;
	FUNC4(&dinfo->resources);
	FUNC2(child, dinfo);
	return (child);
}