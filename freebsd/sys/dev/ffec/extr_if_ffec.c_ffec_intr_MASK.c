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
struct ffec_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FEC_IER_EBERR ; 
 int /*<<< orphan*/  FEC_IER_REG ; 
 int FEC_IER_RXF ; 
 int FEC_IER_TXF ; 
 int /*<<< orphan*/  FUNC0 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ffec_softc*) ; 
 int FUNC2 (struct ffec_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ffec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ffec_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ffec_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct ffec_softc *sc;
	uint32_t ier;

	sc = arg;

	FUNC0(sc);

	ier = FUNC2(sc, FEC_IER_REG);

	if (ier & FEC_IER_TXF) {
		FUNC3(sc, FEC_IER_REG, FEC_IER_TXF);
		FUNC8(sc);
	}

	if (ier & FEC_IER_RXF) {
		FUNC3(sc, FEC_IER_REG, FEC_IER_RXF);
		FUNC6(sc);
	}

	/*
	 * We actually don't care about most errors, because the hardware copes
	 * with them just fine, discarding the incoming bad frame, or forcing a
	 * bad CRC onto an outgoing bad frame, and counting the errors in the
	 * stats registers.  The one that really matters is EBERR (DMA bus
	 * error) because the hardware automatically clears ECR[ETHEREN] and we
	 * have to restart it here.  It should never happen.
	 */
	if (ier & FEC_IER_EBERR) {
		FUNC3(sc, FEC_IER_REG, FEC_IER_EBERR);
		FUNC4(sc->dev, 
		    "Ethernet DMA error, restarting controller.\n");
		FUNC7(sc);
		FUNC5(sc);
	}

	FUNC1(sc);

}