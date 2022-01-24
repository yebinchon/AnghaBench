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
struct ipw_softc {int /*<<< orphan*/  flags; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct ipw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IPW_CSR_INTR_MASK ; 
 int /*<<< orphan*/  IPW_CSR_RST ; 
 int /*<<< orphan*/  IPW_FLAG_HAS_RADIO_SWITCH ; 
 int IPW_RST_MASTER_DISABLED ; 
 int IPW_RST_PRINCETON_RESET ; 
 int IPW_RST_STOP_MASTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct ipw_softc *sc)
{
	uint32_t tmp;
	int ntries;

	/* disable interrupts */
	FUNC1(sc, IPW_CSR_INTR_MASK, 0);

	FUNC1(sc, IPW_CSR_RST, IPW_RST_STOP_MASTER);
	for (ntries = 0; ntries < 50; ntries++) {
		if (FUNC0(sc, IPW_CSR_RST) & IPW_RST_MASTER_DISABLED)
			break;
		FUNC2(10);
	}
	if (ntries == 50)
		FUNC3(sc->sc_dev, "timeout waiting for master\n");

	tmp = FUNC0(sc, IPW_CSR_RST);
	FUNC1(sc, IPW_CSR_RST, tmp | IPW_RST_PRINCETON_RESET);

	/* Clear all flags except the following */
	sc->flags &= IPW_FLAG_HAS_RADIO_SWITCH;
}