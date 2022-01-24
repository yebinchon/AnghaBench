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
struct bcma_devinfo {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 struct bcma_devinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bcma_devinfo*) ; 

__attribute__((used)) static device_t
FUNC4(device_t dev, u_int order, const char *name, int unit)
{
	struct bcma_devinfo	*dinfo;
	device_t		 child;

	child = FUNC1(dev, order, name, unit);
	if (child == NULL)
		return (NULL);

	if ((dinfo = FUNC0(dev)) == NULL) {
		FUNC2(dev, child);
		return (NULL);
	}

	FUNC3(child, dinfo);

	return (child);
}