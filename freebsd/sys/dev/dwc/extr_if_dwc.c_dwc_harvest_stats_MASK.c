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
struct ifnet {int dummy; } ;
struct dwc_softc {scalar_t__ stats_harvest_count; struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 scalar_t__ FUNC0 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXALIGNMENTERROR ; 
 int /*<<< orphan*/  RXCRCERROR ; 
 int /*<<< orphan*/  RXFRAMECOUNT_GB ; 
 int /*<<< orphan*/  RXJABBERERROR ; 
 int /*<<< orphan*/  RXLENGTHERROR ; 
 int /*<<< orphan*/  RXMULTICASTFRAMES_G ; 
 int /*<<< orphan*/  RXOVERSIZE_G ; 
 int /*<<< orphan*/  RXRUNTERROR ; 
 int /*<<< orphan*/  RXUNDERSIZE_G ; 
 scalar_t__ STATS_HARVEST_INTERVAL ; 
 int /*<<< orphan*/  TXCARRIERERR ; 
 int /*<<< orphan*/  TXEXCESSDEF ; 
 int /*<<< orphan*/  TXEXESSCOL ; 
 int /*<<< orphan*/  TXFRAMECOUNT_G ; 
 int /*<<< orphan*/  TXLATECOL ; 
 int /*<<< orphan*/  TXMULTICASTFRAMES_G ; 
 int /*<<< orphan*/  TXOVERSIZE_G ; 
 int /*<<< orphan*/  TXUNDERFLOWERROR ; 
 int /*<<< orphan*/  FUNC1 (struct dwc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct dwc_softc *sc)
{
	struct ifnet *ifp;

	/* We don't need to harvest too often. */
	if (++sc->stats_harvest_count < STATS_HARVEST_INTERVAL)
		return;

	sc->stats_harvest_count = 0;
	ifp = sc->ifp;

	FUNC2(ifp, IFCOUNTER_IPACKETS, FUNC0(sc, RXFRAMECOUNT_GB));
	FUNC2(ifp, IFCOUNTER_IMCASTS, FUNC0(sc, RXMULTICASTFRAMES_G));
	FUNC2(ifp, IFCOUNTER_IERRORS,
	    FUNC0(sc, RXOVERSIZE_G) + FUNC0(sc, RXUNDERSIZE_G) +
	    FUNC0(sc, RXCRCERROR) + FUNC0(sc, RXALIGNMENTERROR) +
	    FUNC0(sc, RXRUNTERROR) + FUNC0(sc, RXJABBERERROR) +
	    FUNC0(sc, RXLENGTHERROR));

	FUNC2(ifp, IFCOUNTER_OPACKETS, FUNC0(sc, TXFRAMECOUNT_G));
	FUNC2(ifp, IFCOUNTER_OMCASTS, FUNC0(sc, TXMULTICASTFRAMES_G));
	FUNC2(ifp, IFCOUNTER_OERRORS,
	    FUNC0(sc, TXOVERSIZE_G) + FUNC0(sc, TXEXCESSDEF) +
	    FUNC0(sc, TXCARRIERERR) + FUNC0(sc, TXUNDERFLOWERROR));

	FUNC2(ifp, IFCOUNTER_COLLISIONS,
	    FUNC0(sc, TXEXESSCOL) + FUNC0(sc, TXLATECOL));

	FUNC1(sc);
}