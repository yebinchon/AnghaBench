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
typedef  int u_char ;
struct psm_softc {int /*<<< orphan*/  kbdc; } ;
typedef  enum probearg { ____Placeholder_probearg } probearg ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int PSMD_RES_LOW ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct psm_softc *sc, enum probearg arg)
{
	static u_char rate[] = { 20, 60, 40, 20, 20, 60, 40, 20, 20 };
	KBDC kbdc = sc->kbdc;
	int status[3];
	int id1;
	int id2;
	int i;

	id1 = FUNC2(kbdc);
	if (FUNC6(kbdc, 10) != 10)
		return (FALSE);
	/*
	 * The device is now in the native mode? It returns a different
	 * ID value...
	 */
	id2 = FUNC2(kbdc);
	if ((id1 == id2) || (id2 != 2))
		return (FALSE);

	if (FUNC5(kbdc, PSMD_RES_LOW) != PSMD_RES_LOW)
		return (FALSE);
#if PSM_DEBUG >= 2
	/* at this point, resolution is LOW, sampling rate is 10/sec */
	if (get_mouse_status(kbdc, status, 0, 3) < 3)
		return (FALSE);
#endif

	/*
	 * The special sequence to enable the third and fourth buttons.
	 * Otherwise they behave like the first and second buttons.
	 */
	for (i = 0; i < FUNC4(rate); ++i)
		if (FUNC6(kbdc, rate[i]) != rate[i])
			return (FALSE);

	/*
	 * At this point, the device is using default resolution and
	 * sampling rate for the native mode.
	 */
	if (FUNC3(kbdc, status, 0, 3) < 3)
		return (FALSE);
	if ((status[1] == PSMD_RES_LOW) || (status[2] == rate[i - 1]))
		return (FALSE);

	/* the device appears be enabled by this sequence, diable it for now */
	FUNC0(kbdc);
	FUNC1(kbdc, 5);

	return (TRUE);
}