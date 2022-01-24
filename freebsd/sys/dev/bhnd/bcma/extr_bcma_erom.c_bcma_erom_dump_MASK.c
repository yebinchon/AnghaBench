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
typedef  int /*<<< orphan*/  bhnd_erom_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
#define  BCMA_EROM_ENTRY_TYPE_CORE 130 
#define  BCMA_EROM_ENTRY_TYPE_MPORT 129 
#define  BCMA_EROM_ENTRY_TYPE_REGION 128 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int BCMA_EROM_REGION_SIZE_OTHER ; 
 scalar_t__ BCMA_EROM_TABLE_EOF ; 
 int /*<<< orphan*/  CORE ; 
 int /*<<< orphan*/  COREA_CLASS ; 
 int /*<<< orphan*/  COREA_DESIGNER ; 
 int /*<<< orphan*/  COREA_ID ; 
 int /*<<< orphan*/  COREB_NUM_DP ; 
 int /*<<< orphan*/  COREB_NUM_MP ; 
 int /*<<< orphan*/  COREB_NUM_WMP ; 
 int /*<<< orphan*/  COREB_REV ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENTRY_ISVALID ; 
 int /*<<< orphan*/  ENTRY_TYPE ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_erom*,char*,...) ; 
 int /*<<< orphan*/  MPORT_ID ; 
 int /*<<< orphan*/  MPORT_NUM ; 
 int /*<<< orphan*/  REGION_64BIT ; 
 int /*<<< orphan*/  REGION_BASE ; 
 int /*<<< orphan*/  REGION_PORT ; 
 int /*<<< orphan*/  REGION_SIZE ; 
 int /*<<< orphan*/  REGION_TYPE ; 
 int /*<<< orphan*/  RSIZE_64BIT ; 
 int /*<<< orphan*/  RSIZE_VAL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct bcma_erom*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_erom*) ; 

__attribute__((used)) static int
FUNC6(bhnd_erom_t *erom)
{
	struct bcma_erom	*sc;
	uint32_t		entry;
	int			error;

	sc = (struct bcma_erom *)erom;

	FUNC5(sc);

	while (!(error = FUNC4(sc, &entry))) {
		/* Handle EOF */
		if (entry == BCMA_EROM_TABLE_EOF) {
			FUNC2(sc, "EOF\n");
			return (0);
		}

		/* Invalid entry */
		if (!FUNC1(entry, ENTRY_ISVALID)) {
			FUNC2(sc, "invalid EROM entry %#x\n", entry);
			return (EINVAL);
		}

		switch (FUNC1(entry, ENTRY_TYPE)) {
		case BCMA_EROM_ENTRY_TYPE_CORE: {
			/* CoreDescA */
			FUNC2(sc, "coreA (0x%x)\n", entry);
			FUNC2(sc, "\tdesigner:\t0x%x\n",
			    FUNC1(entry, COREA_DESIGNER));
			FUNC2(sc, "\tid:\t\t0x%x\n",
			    FUNC1(entry, COREA_ID));
			FUNC2(sc, "\tclass:\t\t0x%x\n",
			    FUNC1(entry, COREA_CLASS));

			/* CoreDescB */
			if ((error = FUNC4(sc, &entry))) {
				FUNC2(sc, "error reading CoreDescB: %d\n",
				    error);
				return (error);
			}

			if (!FUNC0(entry, CORE)) {
				FUNC2(sc, "invalid core descriptor; found "
				    "unexpected entry %#x (type=%s)\n",
				    entry, FUNC3(entry));
				return (EINVAL);
			}

			FUNC2(sc, "coreB (0x%x)\n", entry);
			FUNC2(sc, "\trev:\t0x%x\n",
			    FUNC1(entry, COREB_REV));
			FUNC2(sc, "\tnummp:\t0x%x\n",
			    FUNC1(entry, COREB_NUM_MP));
			FUNC2(sc, "\tnumdp:\t0x%x\n",
			    FUNC1(entry, COREB_NUM_DP));
			FUNC2(sc, "\tnumwmp:\t0x%x\n",
			    FUNC1(entry, COREB_NUM_WMP));
			FUNC2(sc, "\tnumwsp:\t0x%x\n",
			    FUNC1(entry, COREB_NUM_WMP));

			break;
		}
		case BCMA_EROM_ENTRY_TYPE_MPORT:
			FUNC2(sc, "\tmport 0x%x\n", entry);
			FUNC2(sc, "\t\tport:\t0x%x\n",
			    FUNC1(entry, MPORT_NUM));
			FUNC2(sc, "\t\tid:\t\t0x%x\n",
			    FUNC1(entry, MPORT_ID));
			break;

		case BCMA_EROM_ENTRY_TYPE_REGION: {
			bool	addr64;
			uint8_t	size_type;

			addr64 = (FUNC1(entry, REGION_64BIT) != 0);
			size_type = FUNC1(entry, REGION_SIZE);

			FUNC2(sc, "\tregion 0x%x:\n", entry);
			FUNC2(sc, "\t\t%s:\t0x%x\n",
			    addr64 ? "baselo" : "base",
			    FUNC1(entry, REGION_BASE));
			FUNC2(sc, "\t\tport:\t0x%x\n",
			    FUNC1(entry, REGION_PORT));
			FUNC2(sc, "\t\ttype:\t0x%x\n",
			    FUNC1(entry, REGION_TYPE));
			FUNC2(sc, "\t\tsztype:\t0x%hhx\n", size_type);

			/* Read the base address high bits */
			if (addr64) {
				if ((error = FUNC4(sc, &entry))) {
					FUNC2(sc, "error reading region "
					    "base address high bits %d\n",
					    error);
					return (error);
				}

				FUNC2(sc, "\t\tbasehi:\t0x%x\n", entry);
			}

			/* Read extended size descriptor */
			if (size_type == BCMA_EROM_REGION_SIZE_OTHER) {
				bool size64;

				if ((error = FUNC4(sc, &entry))) {
					FUNC2(sc, "error reading region "
					    "size descriptor %d\n",
					    error);
					return (error);
				}

				if (FUNC1(entry, RSIZE_64BIT))
					size64 = true;
				else
					size64 = false;

				FUNC2(sc, "\t\t%s:\t0x%x\n",
				    size64 ? "sizelo" : "size",
				    FUNC1(entry, RSIZE_VAL));

				if (size64) {
					error = FUNC4(sc, &entry);
					if (error) {
						FUNC2(sc, "error reading "
						    "region size high bits: "
						    "%d\n", error);
						return (error);
					}

					FUNC2(sc, "\t\tsizehi:\t0x%x\n",
					    entry);
				}
			}
			break;
		}

		default:
			FUNC2(sc, "unknown EROM entry 0x%x (type=%s)\n",
			    entry, FUNC3(entry));
			return (EINVAL);
		}
	}

	if (error == ENOENT)
		FUNC2(sc, "BCMA EROM table missing terminating EOF\n");
	else if (error)
		FUNC2(sc, "EROM read failed: %d\n", error);

	return (error);
}