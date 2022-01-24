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
struct bhndb_softc {int /*<<< orphan*/ * dev; } ;
struct bhndb_devinfo {int /*<<< orphan*/  addrspace; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bhndb_addrspace ;

/* Variables and functions */
 struct bhndb_devinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

bhndb_addrspace
FUNC4(struct bhndb_softc *sc, device_t child)
{
	struct bhndb_devinfo	*dinfo;
	device_t		 imd_dev;

	/* Find the directly attached parent of the requesting device */
	imd_dev = child;
	while (imd_dev != NULL && FUNC2(imd_dev) != sc->dev)
		imd_dev = FUNC2(imd_dev);

	if (imd_dev == NULL)
		FUNC3("bhndb address space request for non-child device %s\n",
		     FUNC1(child));

	dinfo = FUNC0(imd_dev);
	return (dinfo->addrspace);
}