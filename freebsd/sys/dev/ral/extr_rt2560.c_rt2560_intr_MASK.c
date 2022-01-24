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
struct rt2560_softc {int sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*) ; 
 int FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int RT2560_BEACON_EXPIRE ; 
 int /*<<< orphan*/  RT2560_CSR7 ; 
 int /*<<< orphan*/  RT2560_CSR8 ; 
 int RT2560_DECRYPTION_DONE ; 
 int RT2560_ENCRYPTION_DONE ; 
 int RT2560_F_RUNNING ; 
 int RT2560_INTR_MASK ; 
 int RT2560_PRIO_DONE ; 
 int RT2560_RX_DONE ; 
 int RT2560_TX_DONE ; 
 int RT2560_WAKEUP_EXPIRE ; 
 int /*<<< orphan*/  FUNC4 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct rt2560_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2560_softc*) ; 

void
FUNC11(void *arg)
{
	struct rt2560_softc *sc = arg;
	uint32_t r;

	FUNC0(sc);

	/* disable interrupts */
	FUNC3(sc, RT2560_CSR8, 0xffffffff);

	/* don't re-enable interrupts if we're shutting down */
	if (!(sc->sc_flags & RT2560_F_RUNNING)) {
		FUNC2(sc);
		return;
	}

	r = FUNC1(sc, RT2560_CSR7);
	FUNC3(sc, RT2560_CSR7, r);

	if (r & RT2560_BEACON_EXPIRE)
		FUNC4(sc);

	if (r & RT2560_WAKEUP_EXPIRE)
		FUNC10(sc);

	if (r & RT2560_ENCRYPTION_DONE)
		FUNC6(sc);

	if (r & RT2560_TX_DONE)
		FUNC9(sc);

	if (r & RT2560_PRIO_DONE)
		FUNC7(sc);

	if (r & RT2560_DECRYPTION_DONE)
		FUNC5(sc);

	if (r & RT2560_RX_DONE) {
		FUNC8(sc);
		FUNC6(sc);
	}

	/* re-enable interrupts */
	FUNC3(sc, RT2560_CSR8, RT2560_INTR_MASK);

	FUNC2(sc);
}