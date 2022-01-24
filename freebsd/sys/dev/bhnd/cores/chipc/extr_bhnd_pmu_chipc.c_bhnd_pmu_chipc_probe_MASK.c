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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct chipc_softc {int /*<<< orphan*/  core; } ;
struct chipc_caps {int /*<<< orphan*/  pmu; } ;
struct bhnd_pmu_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  desc ;

/* Variables and functions */
 struct chipc_caps* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_CAP ; 
 int /*<<< orphan*/  BHND_PMU_CAP_REV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BUS_PROBE_NOWILDCARD ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct bhnd_pmu_softc	*sc;
	struct chipc_caps	*ccaps;
	struct chipc_softc	*chipc_sc;
	device_t		 chipc;
	char			 desc[34];
	int			 error;
	uint32_t		 pcaps;
	uint8_t			 rev;

	sc = FUNC7(dev);

	/* Look for chipc parent */
	chipc = FUNC6(dev);
	if (FUNC5(chipc) != FUNC4("bhnd_chipc"))
		return (ENXIO);

	/* Check the chipc PMU capability flag. */
	ccaps = FUNC0(chipc);
	if (!ccaps->pmu)
		return (ENXIO);

	/* Delegate to common driver implementation */
	if ((error = FUNC3(dev)) > 0)
		return (error);

	/* Fetch PMU capability flags */
	chipc_sc = FUNC7(chipc);
	pcaps = FUNC2(chipc_sc->core, BHND_PMU_CAP);

	/* Set description */
	rev = FUNC1(pcaps, BHND_PMU_CAP_REV);
	FUNC9(desc, sizeof(desc), "Broadcom ChipCommon PMU, rev %hhu", rev);
	FUNC8(dev, desc);

	return (BUS_PROBE_NOWILDCARD);
}