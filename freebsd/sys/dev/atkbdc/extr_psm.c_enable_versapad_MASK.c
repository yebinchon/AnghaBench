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
struct psm_softc {int /*<<< orphan*/  kbdc; } ;
typedef  enum probearg { ____Placeholder_probearg } probearg ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  PSMD_RES_MEDIUM_HIGH ; 
 int TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct psm_softc *sc, enum probearg arg)
{
	KBDC kbdc = sc->kbdc;
	int data[3];

	FUNC1(kbdc, PSMD_RES_MEDIUM_HIGH); /* set res. 2 */
	FUNC2(kbdc, 100);		/* set rate 100 */
	FUNC3(kbdc, 1);			/* set scale 1:1 */
	FUNC3(kbdc, 1);			/* set scale 1:1 */
	FUNC3(kbdc, 1);			/* set scale 1:1 */
	FUNC3(kbdc, 1);			/* set scale 1:1 */
	if (FUNC0(kbdc, data, 0, 3) < 3)	/* get status */
		return (FALSE);
	if (data[2] != 0xa || data[1] != 0 )	/* rate == 0xa && res. == 0 */
		return (FALSE);
	FUNC3(kbdc, 1);			/* set scale 1:1 */

	return (TRUE);				/* PS/2 absolute mode */
}