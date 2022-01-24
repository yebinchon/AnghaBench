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
struct uart_softc {int sc_ttypend; int /*<<< orphan*/  sc_softih; } ;

/* Variables and functions */
 int SER_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct uart_softc *sc, uint32_t ipend)
{
	uint32_t new, old;

	do {
		old = sc->sc_ttypend;
		new = old | ipend;
	} while (!FUNC0(&sc->sc_ttypend, old, new));

	if ((old & SER_INT_MASK) == 0)
		FUNC1(sc->sc_softih, 0);
}