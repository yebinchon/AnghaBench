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
struct ifnet {struct an_softc* if_softc; } ;
struct an_softc {int /*<<< orphan*/  mpi350; } ;

/* Variables and functions */
 int /*<<< orphan*/  AN_CMD_DISABLE ; 
 int /*<<< orphan*/  AN_CMD_FW_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct an_softc*) ; 
 int AN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,int) ; 
 int FUNC5 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct an_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,char*,int) ; 

__attribute__((used)) static int
FUNC9(struct ifnet *ifp)
{
	int		status;
	struct an_softc	*sc = ifp->if_softc;

	FUNC1(sc);
	FUNC7(sc);

	FUNC6(sc, AN_CMD_DISABLE, 0);

	if (!(status = FUNC5(ifp, AN_TIMEOUT))) {
		FUNC8(ifp, "Waitbusy hang b4 RESET =%d\n", status);
		FUNC2(sc);
		return -EBUSY;
	}
	FUNC3(sc, FUNC0(sc->mpi350), AN_CMD_FW_RESTART);

	FUNC4(sc, 1000);	/* WAS 600 12/7/00 */


	if (!(status = FUNC5(ifp, 100))) {
		FUNC8(ifp, "Waitbusy hang AFTER RESET =%d\n", status);
		FUNC2(sc);
		return -EBUSY;
	}
	FUNC2(sc);
	return 0;
}