#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ core_unit; } ;
struct TYPE_4__ {TYPE_1__ match; } ;
typedef  struct bhnd_core_match {TYPE_2__ m; } const bhnd_core_match ;
struct bhnd_core_info {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  unit; } ;
struct bcma_erom_core {scalar_t__ vendor; scalar_t__ device; } ;
struct bcma_erom {int dummy; } ;
typedef  int /*<<< orphan*/  bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_EROM_ENTRY_TYPE_CORE ; 
 scalar_t__ UINT_MAX ; 
 int FUNC0 (struct bcma_erom*,struct bcma_erom_core*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_erom*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_erom*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bcma_erom*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_erom*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_erom_core*,scalar_t__,int /*<<< orphan*/ ,struct bhnd_core_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_core_info*,struct bhnd_core_match const*) ; 

__attribute__((used)) static int
FUNC7(struct bcma_erom *sc,
    const struct bhnd_core_match *desc, struct bhnd_core_info *core)
{
	struct bhnd_core_match	 imatch;
	bus_size_t		 core_offset, next_offset;
	int			 error;

	/* Seek to table start. */
	FUNC1(sc);

	/* We can't determine a core's unit number during the initial scan. */
	imatch = *desc;
	imatch.m.match.core_unit = 0;

	/* Locate the first matching core */
	for (u_int i = 0; i < UINT_MAX; i++) {
		struct bcma_erom_core	ec;
		struct bhnd_core_info	ci;

		/* Seek to the next core */
		error = FUNC3(sc, BCMA_EROM_ENTRY_TYPE_CORE);
		if (error)
			return (error);

		/* Save the core offset */
		core_offset = FUNC4(sc);
	
		/* Parse the core */
		if ((error = FUNC0(sc, &ec)))
			return (error);

		FUNC5(&ec, i, 0, &ci);

		/* Check for initial match */
		if (!FUNC6(&ci, &imatch))
			continue;

		/* Re-scan preceding cores to determine the unit number. */
		next_offset = FUNC4(sc);
		FUNC1(sc);
		for (u_int j = 0; j < i; j++) {
			/* Parse the core */
			error = FUNC3(sc,
			    BCMA_EROM_ENTRY_TYPE_CORE);
			if (error)
				return (error);
			
			if ((error = FUNC0(sc, &ec)))
				return (error);

			/* Bump the unit number? */
			if (ec.vendor == ci.vendor && ec.device == ci.device)
				ci.unit++;
		}

		/* Check for full match against now-valid unit number */
		if (!FUNC6(&ci, desc)) {
			/* Reposition to allow reading the next core */
			FUNC2(sc, next_offset);
			continue;
		}

		/* Found; seek to the core's initial offset and provide
		 * the core info to the caller */
		FUNC2(sc, core_offset);
		if (core != NULL)
			*core = ci;

		return (0);
	}

	/* Not found, or a parse error occured */
	return (error);
}