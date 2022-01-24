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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct bcma_erom {int dummy; } ;

/* Variables and functions */
#define  BCMA_EROM_ENTRY_TYPE_CORE 130 
#define  BCMA_EROM_ENTRY_TYPE_MPORT 129 
#define  BCMA_EROM_ENTRY_TYPE_REGION 128 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ BCMA_EROM_TABLE_EOF ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENTRY_ISVALID ; 
 int /*<<< orphan*/  ENTRY_TYPE ; 
 int FUNC1 (struct bcma_erom*,scalar_t__*) ; 
 int FUNC2 (struct bcma_erom*) ; 
 int FUNC3 (struct bcma_erom*) ; 
 int FUNC4 (struct bcma_erom*) ; 

__attribute__((used)) static int
FUNC5(struct bcma_erom *erom, uint8_t etype)
{
	uint32_t			entry;
	int				error;

	/* Iterate until we hit an entry matching the requested type. */
	while (!(error = FUNC1(erom, &entry))) {
		/* Handle EOF */
		if (entry == BCMA_EROM_TABLE_EOF)
			return (ENOENT);

		/* Invalid entry */
		if (!FUNC0(entry, ENTRY_ISVALID))
			return (EINVAL);

		/* Entry type matches? */
		if (FUNC0(entry, ENTRY_TYPE) == etype)
			return (0);

		/* Skip non-matching entry types. */
		switch (FUNC0(entry, ENTRY_TYPE)) {
		case BCMA_EROM_ENTRY_TYPE_CORE:
			if ((error = FUNC2(erom)))
				return (error);

			break;

		case BCMA_EROM_ENTRY_TYPE_MPORT:
			if ((error = FUNC3(erom)))
				return (error);

			break;
		
		case BCMA_EROM_ENTRY_TYPE_REGION:
			if ((error = FUNC4(erom)))
				return (error);
			break;

		default:
			/* Unknown entry type! */
			return (EINVAL);	
		}
	}

	return (error);
}