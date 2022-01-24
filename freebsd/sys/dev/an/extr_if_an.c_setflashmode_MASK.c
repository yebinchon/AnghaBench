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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AN_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct an_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FLASH_COMMAND ; 
 int /*<<< orphan*/  FUNC4 (struct an_softc*,int) ; 
 int FUNC5 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp)
{
	int		status;
	struct an_softc	*sc = ifp->if_softc;

	FUNC3(sc, FUNC1(sc->mpi350), FLASH_COMMAND);
	FUNC3(sc, FUNC2(sc->mpi350), FLASH_COMMAND);
	FUNC3(sc, FUNC1(sc->mpi350), FLASH_COMMAND);
	FUNC3(sc, FUNC0(sc->mpi350), FLASH_COMMAND);

	/*
	 * mdelay(500); // 500ms delay
	 */

	FUNC4(sc, 500);

	if (!(status = FUNC5(ifp, AN_TIMEOUT))) {
		FUNC6("Waitbusy hang after setflash mode\n");
		return -EIO;
	}
	return 0;
}