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
struct iwi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  IWI_CSR_AUTOINC_ADDR ; 
 int /*<<< orphan*/  IWI_CSR_AUTOINC_DATA ; 
 int /*<<< orphan*/  IWI_CSR_CTL ; 
 int /*<<< orphan*/  IWI_CSR_READ_INT ; 
 int /*<<< orphan*/  IWI_CSR_RST ; 
 int IWI_CTL_CLOCK_READY ; 
 int IWI_CTL_INIT ; 
 int IWI_READ_INT_INIT_HOST ; 
 int IWI_RST_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwi_softc*) ; 

__attribute__((used)) static int
FUNC5(struct iwi_softc *sc)
{
	uint32_t tmp;
	int i, ntries;

	FUNC4(sc);

	tmp = FUNC0(sc, IWI_CSR_CTL);
	FUNC1(sc, IWI_CSR_CTL, tmp | IWI_CTL_INIT);

	FUNC1(sc, IWI_CSR_READ_INT, IWI_READ_INT_INIT_HOST);

	/* wait for clock stabilization */
	for (ntries = 0; ntries < 1000; ntries++) {
		if (FUNC0(sc, IWI_CSR_CTL) & IWI_CTL_CLOCK_READY)
			break;
		FUNC2(200);
	}
	if (ntries == 1000) {
		FUNC3(sc->sc_dev,
		    "timeout waiting for clock stabilization\n");
		return EIO;
	}

	tmp = FUNC0(sc, IWI_CSR_RST);
	FUNC1(sc, IWI_CSR_RST, tmp | IWI_RST_SOFT_RESET);

	FUNC2(10);

	tmp = FUNC0(sc, IWI_CSR_CTL);
	FUNC1(sc, IWI_CSR_CTL, tmp | IWI_CTL_INIT);

	/* clear NIC memory */
	FUNC1(sc, IWI_CSR_AUTOINC_ADDR, 0);
	for (i = 0; i < 0xc000; i++)
		FUNC1(sc, IWI_CSR_AUTOINC_DATA, 0);

	return 0;
}