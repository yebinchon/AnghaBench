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
struct xae_softc {struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  RX_ALIGNMENT_ERRORS ; 
 int /*<<< orphan*/  RX_FRAME_CHECK_SEQ_ERROR ; 
 int /*<<< orphan*/  RX_GOOD_FRAMES ; 
 int /*<<< orphan*/  RX_GOOD_MCASTS ; 
 int /*<<< orphan*/  RX_LEN_OUT_OF_RANGE ; 
 int /*<<< orphan*/  TX_BYTES ; 
 int /*<<< orphan*/  TX_EXCESS_COLLISIONS ; 
 int /*<<< orphan*/  TX_GOOD_FRAMES ; 
 int /*<<< orphan*/  TX_GOOD_MCASTS ; 
 int /*<<< orphan*/  TX_GOOD_UNDERRUN_ERRORS ; 
 int /*<<< orphan*/  TX_LATE_COLLISIONS ; 
 int /*<<< orphan*/  TX_MULTI_COLLISION_FRAMES ; 
 int /*<<< orphan*/  TX_SINGLE_COLLISION_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct xae_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct xae_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->ifp;

	FUNC0(ifp, IFCOUNTER_IPACKETS, FUNC1(sc, RX_GOOD_FRAMES));
	FUNC0(ifp, IFCOUNTER_IMCASTS, FUNC1(sc, RX_GOOD_MCASTS));
	FUNC0(ifp, IFCOUNTER_IERRORS,
	    FUNC1(sc, RX_FRAME_CHECK_SEQ_ERROR) +
	    FUNC1(sc, RX_LEN_OUT_OF_RANGE) +
	    FUNC1(sc, RX_ALIGNMENT_ERRORS));

	FUNC0(ifp, IFCOUNTER_OBYTES, FUNC1(sc, TX_BYTES));
	FUNC0(ifp, IFCOUNTER_OPACKETS, FUNC1(sc, TX_GOOD_FRAMES));
	FUNC0(ifp, IFCOUNTER_OMCASTS, FUNC1(sc, TX_GOOD_MCASTS));
	FUNC0(ifp, IFCOUNTER_OERRORS,
	    FUNC1(sc, TX_GOOD_UNDERRUN_ERRORS));

	FUNC0(ifp, IFCOUNTER_COLLISIONS,
	    FUNC1(sc, TX_SINGLE_COLLISION_FRAMES) +
	    FUNC1(sc, TX_MULTI_COLLISION_FRAMES) +
	    FUNC1(sc, TX_LATE_COLLISIONS) +
	    FUNC1(sc, TX_EXCESS_COLLISIONS));
}