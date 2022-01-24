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
struct iwm_softc {int sc_flags; int /*<<< orphan*/  sc_ic; int /*<<< orphan*/  sc_attached; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IWM_FLAG_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_softc*) ; 
 int /*<<< orphan*/  PCI_CFG_RETRY_TIMEOUT ; 
 struct iwm_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct iwm_softc *sc = FUNC2(dev);
	int do_reinit = 0;

	/*
	 * We disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state.
	 */
	FUNC5(dev, PCI_CFG_RETRY_TIMEOUT, 0x00, 1);

	if (!sc->sc_attached)
		return 0;

	FUNC4(FUNC2(dev));

	FUNC0(sc);
	if (sc->sc_flags & IWM_FLAG_SCANNING) {
		sc->sc_flags &= ~IWM_FLAG_SCANNING;
		do_reinit = 1;
	}
	FUNC1(sc);

	if (do_reinit)
		FUNC3(&sc->sc_ic);

	return 0;
}