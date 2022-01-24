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
struct bhndb_devinfo {int /*<<< orphan*/  resources; int /*<<< orphan*/  addrspace; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_ADDRSPACE_NATIVE ; 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bhndb_devinfo*) ; 
 struct bhndb_devinfo* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC5(device_t dev, u_int order, const char *name, int unit)
{
	struct bhndb_devinfo	*dinfo;
	device_t		 child;
	
	child = FUNC0(dev, order, name, unit);
	if (child == NULL)
		return (NULL);

	dinfo = FUNC3(sizeof(struct bhndb_devinfo), M_BHND, M_NOWAIT);
	if (dinfo == NULL) {
		FUNC1(dev, child);
		return (NULL);
	}

	dinfo->addrspace = BHNDB_ADDRSPACE_NATIVE;
	FUNC4(&dinfo->resources);

	FUNC2(child, dinfo);

	return (child);
}