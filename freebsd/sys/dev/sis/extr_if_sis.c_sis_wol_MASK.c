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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct sis_softc {scalar_t__ sis_type; int /*<<< orphan*/  sis_dev; struct ifnet* sis_ifp; } ;
struct ifnet {int if_capenable; } ;

/* Variables and functions */
 int FUNC0 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*,int /*<<< orphan*/ ,int) ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFCAP_WOL_UCAST ; 
 int /*<<< orphan*/  NS_CLKRUN ; 
 int NS_CLKRUN_PMEENB ; 
 int NS_CLKRUN_PMESTS ; 
 int /*<<< orphan*/  NS_WCSR ; 
 int NS_WCSR_WAKE_MAGIC ; 
 int NS_WCSR_WAKE_MCAST ; 
 int NS_WCSR_WAKE_UCAST ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 scalar_t__ PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int /*<<< orphan*/  SIS_CSR ; 
 int /*<<< orphan*/  SIS_CSR_RX_ENABLE ; 
 int /*<<< orphan*/  SIS_PWRMAN_CTL ; 
 int SIS_PWRMAN_WOL_MAGIC ; 
 int /*<<< orphan*/  SIS_RX_LISTPTR ; 
 int /*<<< orphan*/  FUNC2 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SIS_TYPE_83815 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void
FUNC6(struct sis_softc *sc)
{
	struct ifnet		*ifp;
	uint32_t		val;
	uint16_t		pmstat;
	int			pmc;

	ifp = sc->sis_ifp;
	if ((ifp->if_capenable & IFCAP_WOL) == 0)
		return;

	if (sc->sis_type == SIS_TYPE_83815) {
		/* Reset RXDP. */
		FUNC1(sc, SIS_RX_LISTPTR, 0);

		/* Configure WOL events. */
		FUNC0(sc, NS_WCSR);
		val = 0;
		if ((ifp->if_capenable & IFCAP_WOL_UCAST) != 0)
			val |= NS_WCSR_WAKE_UCAST;
		if ((ifp->if_capenable & IFCAP_WOL_MCAST) != 0)
			val |= NS_WCSR_WAKE_MCAST;
		if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
			val |= NS_WCSR_WAKE_MAGIC;
		FUNC1(sc, NS_WCSR, val);
		/* Enable PME and clear PMESTS. */
		val = FUNC0(sc, NS_CLKRUN);
		val |= NS_CLKRUN_PMEENB | NS_CLKRUN_PMESTS;
		FUNC1(sc, NS_CLKRUN, val);
		/* Enable silent RX mode. */
		FUNC2(sc, SIS_CSR, SIS_CSR_RX_ENABLE);
	} else {
		if (FUNC3(sc->sis_dev, PCIY_PMG, &pmc) != 0)
			return;
		val = 0;
		if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
			val |= SIS_PWRMAN_WOL_MAGIC;
		FUNC1(sc, SIS_PWRMAN_CTL, val);
		/* Request PME. */
		pmstat = FUNC4(sc->sis_dev,
		    pmc + PCIR_POWER_STATUS, 2);
		pmstat &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
		if ((ifp->if_capenable & IFCAP_WOL_MAGIC) != 0)
			pmstat |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
		FUNC5(sc->sis_dev,
		    pmc + PCIR_POWER_STATUS, pmstat, 2);
	}
}