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
struct ffec_softc {struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_IEEE_R_DROP ; 
 int /*<<< orphan*/  FEC_IEEE_R_MACERR ; 
 int /*<<< orphan*/  FEC_RMON_R_CRC_ALIGN ; 
 int /*<<< orphan*/  FEC_RMON_R_FRAG ; 
 int /*<<< orphan*/  FEC_RMON_R_JAB ; 
 int /*<<< orphan*/  FEC_RMON_R_MC_PKT ; 
 int /*<<< orphan*/  FEC_RMON_R_OVERSIZE ; 
 int /*<<< orphan*/  FEC_RMON_R_PACKETS ; 
 int /*<<< orphan*/  FEC_RMON_R_UNDERSIZE ; 
 int /*<<< orphan*/  FEC_RMON_T_COL ; 
 int /*<<< orphan*/  FEC_RMON_T_CRC_ALIGN ; 
 int /*<<< orphan*/  FEC_RMON_T_FRAG ; 
 int /*<<< orphan*/  FEC_RMON_T_JAB ; 
 int /*<<< orphan*/  FEC_RMON_T_MC_PKT ; 
 int /*<<< orphan*/  FEC_RMON_T_OVERSIZE ; 
 int /*<<< orphan*/  FEC_RMON_T_PACKETS ; 
 int /*<<< orphan*/  FEC_RMON_T_UNDERSIZE ; 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 scalar_t__ FUNC0 (struct ffec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct ffec_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->ifp;

	/*
	 * - FEC_IEEE_R_DROP is "dropped due to invalid start frame delimiter"
	 *   so it's really just another type of input error.
	 * - FEC_IEEE_R_MACERR is "no receive fifo space"; count as input drops.
	 */
	FUNC2(ifp, IFCOUNTER_IPACKETS, FUNC0(sc, FEC_RMON_R_PACKETS));
	FUNC2(ifp, IFCOUNTER_IMCASTS, FUNC0(sc, FEC_RMON_R_MC_PKT));
	FUNC2(ifp, IFCOUNTER_IERRORS,
	    FUNC0(sc, FEC_RMON_R_CRC_ALIGN) + FUNC0(sc, FEC_RMON_R_UNDERSIZE) +
	    FUNC0(sc, FEC_RMON_R_OVERSIZE) + FUNC0(sc, FEC_RMON_R_FRAG) +
	    FUNC0(sc, FEC_RMON_R_JAB) + FUNC0(sc, FEC_IEEE_R_DROP));

	FUNC2(ifp, IFCOUNTER_IQDROPS, FUNC0(sc, FEC_IEEE_R_MACERR));

	FUNC2(ifp, IFCOUNTER_OPACKETS, FUNC0(sc, FEC_RMON_T_PACKETS));
	FUNC2(ifp, IFCOUNTER_OMCASTS, FUNC0(sc, FEC_RMON_T_MC_PKT));
	FUNC2(ifp, IFCOUNTER_OERRORS,
	    FUNC0(sc, FEC_RMON_T_CRC_ALIGN) + FUNC0(sc, FEC_RMON_T_UNDERSIZE) +
	    FUNC0(sc, FEC_RMON_T_OVERSIZE) + FUNC0(sc, FEC_RMON_T_FRAG) +
	    FUNC0(sc, FEC_RMON_T_JAB));

	FUNC2(ifp, IFCOUNTER_COLLISIONS, FUNC0(sc, FEC_RMON_T_COL));

	FUNC1(sc);
}