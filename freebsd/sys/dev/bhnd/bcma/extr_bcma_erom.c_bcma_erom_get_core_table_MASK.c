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
typedef  scalar_t__ u_int ;
struct bhnd_core_info {scalar_t__ vendor; scalar_t__ device; } ;
struct bcma_erom_core {int dummy; } ;
struct bcma_erom {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;
typedef  int /*<<< orphan*/  bhnd_erom_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_EROM_ENTRY_TYPE_CORE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC0 (struct bcma_erom*,struct bcma_erom_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_erom*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_erom*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bcma_erom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_erom*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_erom_core*,scalar_t__,int,struct bhnd_core_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_core_info*,int /*<<< orphan*/ ) ; 
 struct bhnd_core_info* FUNC7 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(bhnd_erom_t *erom, struct bhnd_core_info **cores,
    u_int *num_cores)
{
	struct bcma_erom	*sc;
	struct bhnd_core_info	*buffer;
	bus_size_t		 initial_offset;
	u_int			 count;
	int			 error;

	sc = (struct bcma_erom *)erom;

	buffer = NULL;
	initial_offset = FUNC4(sc);

	/* Determine the core count */
	FUNC1(sc);
	for (count = 0, error = 0; !error; count++) {
		struct bcma_erom_core core;

		/* Seek to the first readable core entry */
		error = FUNC3(sc, BCMA_EROM_ENTRY_TYPE_CORE);
		if (error == ENOENT)
			break;
		else if (error)
			goto cleanup;
		
		/* Read past the core descriptor */
		if ((error = FUNC0(sc, &core)))
			goto cleanup;
	}

	/* Allocate our output buffer */
	buffer = FUNC7(count, sizeof(struct bhnd_core_info), M_BHND,
	    M_NOWAIT);
	if (buffer == NULL) {
		error = ENOMEM;
		goto cleanup;
	}

	/* Parse all core descriptors */
	FUNC1(sc);
	for (u_int i = 0; i < count; i++) {
		struct bcma_erom_core	core;
		int			unit;

		/* Parse the core */
		error = FUNC3(sc, BCMA_EROM_ENTRY_TYPE_CORE);
		if (error)
			goto cleanup;

		error = FUNC0(sc, &core);
		if (error)
			goto cleanup;

		/* Determine the unit number */
		unit = 0;
		for (u_int j = 0; j < i; j++) {
			if (buffer[i].vendor == buffer[j].vendor &&
			    buffer[i].device == buffer[j].device)
				unit++;
		}

		/* Convert to a bhnd info record */
		FUNC5(&core, i, unit, &buffer[i]);
	}

cleanup:
	if (!error) {
		*cores = buffer;
		*num_cores = count;
	} else {
		if (buffer != NULL)
			FUNC6(buffer, M_BHND);
	}

	/* Restore the initial position */
	FUNC2(sc, initial_offset);
	return (error);
}