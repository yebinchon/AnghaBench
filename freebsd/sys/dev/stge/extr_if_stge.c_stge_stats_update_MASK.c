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
struct stge_softc {struct ifnet* sc_ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  STGE_FramesAbortXSColls ; 
 int /*<<< orphan*/  STGE_FramesLostRxErrors ; 
 int /*<<< orphan*/  STGE_FramesRcvdOk ; 
 int /*<<< orphan*/  STGE_FramesWEXDeferal ; 
 int /*<<< orphan*/  STGE_FramesXmtdOk ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*) ; 
 int /*<<< orphan*/  STGE_LateCollisions ; 
 int /*<<< orphan*/  STGE_MultiColFrames ; 
 int /*<<< orphan*/  STGE_OctetRcvOk ; 
 int /*<<< orphan*/  STGE_OctetXmtdOk ; 
 int /*<<< orphan*/  STGE_SingleColFrames ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct stge_softc *sc)
{
	struct ifnet *ifp;

	FUNC2(sc);

	ifp = sc->sc_ifp;

	FUNC1(sc,STGE_OctetRcvOk);

	FUNC3(ifp, IFCOUNTER_IPACKETS, FUNC1(sc, STGE_FramesRcvdOk));

	FUNC3(ifp, IFCOUNTER_IERRORS, FUNC0(sc, STGE_FramesLostRxErrors));

	FUNC1(sc, STGE_OctetXmtdOk);

	FUNC3(ifp, IFCOUNTER_OPACKETS, FUNC1(sc, STGE_FramesXmtdOk));

	FUNC3(ifp, IFCOUNTER_COLLISIONS,
	    FUNC1(sc, STGE_LateCollisions) +
	    FUNC1(sc, STGE_MultiColFrames) +
	    FUNC1(sc, STGE_SingleColFrames));

	FUNC3(ifp, IFCOUNTER_OERRORS,
	    FUNC0(sc, STGE_FramesAbortXSColls) +
	    FUNC0(sc, STGE_FramesWEXDeferal));
}