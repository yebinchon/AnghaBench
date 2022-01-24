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
struct uart_softc {struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_rxbits; int ier_mask; int ier; } ;

/* Variables and functions */
 int IER_EMSC ; 
 int IER_ERLS ; 
 int IER_ERXRDY ; 
 int IER_RXTMOUT ; 
 int /*<<< orphan*/  REG_IER ; 
 int FUNC0 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_bas*) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc)
{
	struct ns8250_softc *ns8250;
	struct uart_bas *bas;
	int rv;

	ns8250 = (struct ns8250_softc *)sc;
	bas = &sc->sc_bas;

	rv = FUNC0(sc);
	if (rv != 0)
		return (0);

	/* Configure uart to use extra IER_RXTMOUT bit */
	ns8250->ier_rxbits = IER_RXTMOUT | IER_EMSC | IER_ERLS | IER_ERXRDY;
	ns8250->ier_mask = ~(ns8250->ier_rxbits);
	ns8250->ier = FUNC2(bas, REG_IER) & ns8250->ier_mask;
	ns8250->ier |= ns8250->ier_rxbits;
	FUNC3(bas, REG_IER, ns8250->ier);
	FUNC1(bas);
	return (0);
}