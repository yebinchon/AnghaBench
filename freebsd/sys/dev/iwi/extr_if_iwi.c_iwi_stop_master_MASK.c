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
struct iwi_softc {int /*<<< orphan*/  flags; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IWI_CSR_INTR_MASK ; 
 int /*<<< orphan*/  IWI_CSR_RST ; 
 int /*<<< orphan*/  IWI_FLAG_FW_INITED ; 
 int IWI_RST_MASTER_DISABLED ; 
 int IWI_RST_PRINCETON_RESET ; 
 int IWI_RST_STOP_MASTER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC4(struct iwi_softc *sc)
{
	uint32_t tmp;
	int ntries;

	/* disable interrupts */
	FUNC1(sc, IWI_CSR_INTR_MASK, 0);

	FUNC1(sc, IWI_CSR_RST, IWI_RST_STOP_MASTER);
	for (ntries = 0; ntries < 5; ntries++) {
		if (FUNC0(sc, IWI_CSR_RST) & IWI_RST_MASTER_DISABLED)
			break;
		FUNC2(10);
	}
	if (ntries == 5)
		FUNC3(sc->sc_dev, "timeout waiting for master\n");

	tmp = FUNC0(sc, IWI_CSR_RST);
	FUNC1(sc, IWI_CSR_RST, tmp | IWI_RST_PRINCETON_RESET);

	sc->flags &= ~IWI_FLAG_FW_INITED;
}