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
struct tsec_softc {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int TSEC_IMASK_BREN ; 
 int TSEC_IMASK_BSYEN ; 
 int TSEC_IMASK_BTEN ; 
 int TSEC_IMASK_EBERREN ; 
 int TSEC_IMASK_RXCEN ; 
 int TSEC_IMASK_RXFEN ; 
 int TSEC_IMASK_TXBEN ; 
 int TSEC_IMASK_TXEEN ; 
 int TSEC_IMASK_TXFEN ; 
 int TSEC_IMASK_XFUNEN ; 
 int /*<<< orphan*/  TSEC_REG_IMASK ; 
 int /*<<< orphan*/  FUNC0 (struct tsec_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct tsec_softc *sc, int state)
{
	device_t dev;

	dev = sc->dev;

	switch (state) {
	case 0:
		FUNC0(sc, TSEC_REG_IMASK, 0);
		break;
	case 1:
		FUNC0(sc, TSEC_REG_IMASK, TSEC_IMASK_BREN |
		    TSEC_IMASK_RXCEN | TSEC_IMASK_BSYEN | TSEC_IMASK_EBERREN |
		    TSEC_IMASK_BTEN | TSEC_IMASK_TXEEN | TSEC_IMASK_TXBEN |
		    TSEC_IMASK_TXFEN | TSEC_IMASK_XFUNEN | TSEC_IMASK_RXFEN);
		break;
	default:
		FUNC1(dev, "tsec_intrs_ctl(): unknown state value: %d\n",
		    state);
	}
}