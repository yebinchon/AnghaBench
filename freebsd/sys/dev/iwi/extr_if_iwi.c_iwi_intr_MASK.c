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
struct iwi_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/ * txq; scalar_t__ sc_busy_timer; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (struct iwi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IWI_CSR_INTR ; 
 int /*<<< orphan*/  IWI_FLAG_BUSY ; 
 int IWI_INTR_CMD_DONE ; 
 int IWI_INTR_FATAL_ERROR ; 
 int IWI_INTR_FW_INITED ; 
 int IWI_INTR_PARITY_ERROR ; 
 int IWI_INTR_RADIO_OFF ; 
 int IWI_INTR_RX_DONE ; 
 int IWI_INTR_TX1_DONE ; 
 int IWI_INTR_TX2_DONE ; 
 int IWI_INTR_TX3_DONE ; 
 int IWI_INTR_TX4_DONE ; 
 int /*<<< orphan*/  FUNC2 (struct iwi_softc*) ; 
 int /*<<< orphan*/  IWI_LOCK_DECL ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct iwi_softc *sc = arg;
	uint32_t r;
	IWI_LOCK_DECL;

	FUNC2(sc);

	if ((r = FUNC0(sc, IWI_CSR_INTR)) == 0 || r == 0xffffffff) {
		FUNC3(sc);
		return;
	}

	/* acknowledge interrupts */
	FUNC1(sc, IWI_CSR_INTR, r);

	if (r & IWI_INTR_FATAL_ERROR) {
		FUNC5(sc);
		goto done;
	}

	if (r & IWI_INTR_FW_INITED) {
		if (!(r & (IWI_INTR_FATAL_ERROR | IWI_INTR_PARITY_ERROR)))
			FUNC9(sc);
	}

	if (r & IWI_INTR_RADIO_OFF)
		FUNC6(sc);

	if (r & IWI_INTR_CMD_DONE) {
		sc->flags &= ~IWI_FLAG_BUSY;
		sc->sc_busy_timer = 0;
		FUNC9(sc);
	}

	if (r & IWI_INTR_TX1_DONE)
		FUNC8(sc, &sc->txq[0]);

	if (r & IWI_INTR_TX2_DONE)
		FUNC8(sc, &sc->txq[1]);

	if (r & IWI_INTR_TX3_DONE)
		FUNC8(sc, &sc->txq[2]);

	if (r & IWI_INTR_TX4_DONE)
		FUNC8(sc, &sc->txq[3]);

	if (r & IWI_INTR_RX_DONE)
		FUNC7(sc);

	if (r & IWI_INTR_PARITY_ERROR) {
		/* XXX rate-limit */
		FUNC4(sc->sc_dev, "parity error\n");
	}
done:
	FUNC3(sc);
}