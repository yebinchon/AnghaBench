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
struct chipc_softc {scalar_t__ dev; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chipc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  MUX_SPROM ; 
 int /*<<< orphan*/  M_TEMP ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__**,int*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC9(struct chipc_softc *sc)
{
	device_t	*devs;
	device_t	 hostb;
	device_t	 parent;
	int		 devcount;
	int		 error;
	bool		 result;

	/* Nothing to do? */
	if (!FUNC0(sc, MUX_SPROM))
		return (true);

	FUNC7(&Giant);	/* for newbus */

	parent = FUNC3(sc->dev);
	hostb = FUNC1(parent);

	if ((error = FUNC2(parent, &devs, &devcount))) {
		FUNC8(&Giant);
		return (false);
	}

	/* Reject any active devices other than ChipCommon, or the
	 * host bridge (if any). */
	result = true;
	for (int i = 0; i < devcount; i++) {
		if (devs[i] == hostb || devs[i] == sc->dev)
			continue;

		if (!FUNC4(devs[i]))
			continue;

		if (FUNC5(devs[i]))
			continue;

		/* Active device; assume SPROM is busy */
		result = false;
		break;
	}

	FUNC6(devs, M_TEMP);
	FUNC8(&Giant);
	return (result);
}