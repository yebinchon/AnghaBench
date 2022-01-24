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
struct chipc_softc {int dummy; } ;
struct chipc_devinfo {int irq_mapped; int /*<<< orphan*/  resources; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct chipc_softc* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct chipc_devinfo*) ; 
 struct chipc_devinfo* FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC6(device_t dev, u_int order, const char *name, int unit)
{
	struct chipc_softc	*sc;
	struct chipc_devinfo	*dinfo;
	device_t		 child;

	sc = FUNC2(dev);

	child = FUNC0(dev, order, name, unit);
	if (child == NULL)
		return (NULL);

	dinfo = FUNC4(sizeof(struct chipc_devinfo), M_BHND, M_NOWAIT);
	if (dinfo == NULL) {
		FUNC1(dev, child);
		return (NULL);
	}

	FUNC5(&dinfo->resources);
	dinfo->irq_mapped = false;
	FUNC3(child, dinfo);

	return (child);
}