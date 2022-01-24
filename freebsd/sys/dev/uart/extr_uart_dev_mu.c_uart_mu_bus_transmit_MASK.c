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
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
struct uart_mu_softc {int aux_ier; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUX_MU_IER_REG ; 
 int /*<<< orphan*/  AUX_MU_IO_REG ; 
 int /*<<< orphan*/  FUNC0 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct uart_mu_softc *psc;
	struct uart_bas *bas;
	int i;
	
	psc = (struct uart_mu_softc *)sc;
	bas = &sc->sc_bas;
	FUNC2(sc->sc_hwmtx);

  	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC0(bas, AUX_MU_IO_REG, sc->sc_txbuf[i] & 0xff);
		FUNC1(bas);
	}

	/* Mark busy and enable TX interrupt */
	sc->sc_txbusy = 1;
	FUNC0(bas, AUX_MU_IER_REG, psc->aux_ier);
		
	FUNC3(sc->sc_hwmtx);

	return (0);
}