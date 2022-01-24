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
struct lsi64854_softc {int sc_dodrain; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EDMACSR_BITS ; 
 int E_DRAIN ; 
 int E_DRAINING ; 
 int E_ERR_PEND ; 
 int E_INT_PEND ; 
 int E_INVALIDATE ; 
 int E_SLAVE_ERR ; 
 int L64854_EN_DMA ; 
 int FUNC1 (struct lsi64854_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lsi64854_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void *arg)
{
	struct lsi64854_softc *sc = arg;
	uint32_t csr;
	int i, rv;

	csr = FUNC1(sc);

	/* If the DMA logic shows an interrupt, claim it */
	rv = ((csr & E_INT_PEND) != 0) ? 1 : 0;

	if (csr & (E_ERR_PEND | E_SLAVE_ERR)) {
		FUNC3(sc->sc_dev, "error: csr=%b\n", csr,
		    EDMACSR_BITS);
		csr &= ~L64854_EN_DMA;	/* Stop DMA. */
		/* Invalidate the queue; SLAVE_ERR bit is write-to-clear */
		csr |= E_INVALIDATE | E_SLAVE_ERR;
		FUNC2(sc, csr);
		/* Will be drained with the LE_C0_IDON interrupt. */
		sc->sc_dodrain = 1;
		return (-1);
	}

	/* XXX - is this necessary with E_DSBL_WR_INVAL on? */
	if (sc->sc_dodrain) {
		i = 10;
		csr |= E_DRAIN;
		FUNC2(sc, csr);
		while (i-- > 0 && (FUNC1(sc) & E_DRAINING))
			FUNC0(1);
		sc->sc_dodrain = 0;
	}

	return (rv);
}