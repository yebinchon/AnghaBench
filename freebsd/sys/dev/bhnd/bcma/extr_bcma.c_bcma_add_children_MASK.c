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
struct bhnd_erom_io {int dummy; } ;
struct bhnd_chipid {int dummy; } ;
struct bcma_erom {int dummy; } ;
struct bcma_devinfo {int dummy; } ;
struct bcma_corecfg {int dummy; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  bhnd_erom_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_EROM_RID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct bhnd_chipid* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int ENODEV ; 
 int ENOENT ; 
 int ENXIO ; 
 int FUNC3 (struct bcma_erom*,struct bcma_corecfg**) ; 
 int /*<<< orphan*/  bcma_erom_parser ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_corecfg*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bcma_devinfo*,struct bcma_corecfg*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,struct bhnd_chipid const*,struct bhnd_erom_io*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bhnd_erom_io*) ; 
 struct bhnd_erom_io* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct bcma_devinfo* FUNC13 (int /*<<< orphan*/ *) ; 

int
FUNC14(device_t bus)
{
	bhnd_erom_t			*erom;
	struct bcma_erom		*bcma_erom;
	struct bhnd_erom_io		*eio;
	const struct bhnd_chipid	*cid;
	struct bcma_corecfg		*corecfg;
	struct bcma_devinfo		*dinfo;
	device_t			 child;
	int				 error;

	cid = FUNC1(bus, bus);
	corecfg = NULL;

	/* Allocate our EROM parser */
	eio = FUNC9(bus, BCMA_EROM_RID);
	erom = FUNC6(&bcma_erom_parser, cid, eio);
	if (erom == NULL) {
		FUNC8(eio);
		return (ENODEV);
	}

	/* Add all cores. */
	bcma_erom = (struct bcma_erom *)erom;
	while ((error = FUNC3(bcma_erom, &corecfg)) == 0) {
		/* Add the child device */
		child = FUNC2(bus, 0, NULL, -1);
		if (child == NULL) {
			error = ENXIO;
			goto cleanup;
		}

		/* Initialize device ivars */
		dinfo = FUNC13(child);
		if ((error = FUNC5(bus, child, dinfo, corecfg)))
			goto cleanup;

		/* The dinfo instance now owns the corecfg value */
		corecfg = NULL;

		/* If pins are floating or the hardware is otherwise
		 * unpopulated, the device shouldn't be used. */
		if (FUNC10(child))
			FUNC12(child);

		/* Issue bus callback for fully initialized child. */
		FUNC0(bus, child);
	}

	/* EOF while parsing cores is expected */
	if (error == ENOENT)
		error = 0;
	
cleanup:
	FUNC7(erom);

	if (corecfg != NULL)
		FUNC4(corecfg);

	if (error)
		FUNC11(bus);

	return (error);
}