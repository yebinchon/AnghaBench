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
typedef  scalar_t__ uint32_t ;
struct uart_bas {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct uart_softc {size_t sc_rxput; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_rxbuf; struct uart_bas sc_bas; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SBBC_SRAM_CONS_SPACE_IN ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  UART_STAT_OVERRUN ; 
 int /*<<< orphan*/  cons_in_begin ; 
 int /*<<< orphan*/  cons_in_end ; 
 int /*<<< orphan*/  cons_in_rdptr ; 
 int /*<<< orphan*/  cons_in_wrptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sbbc_solcons ; 
 scalar_t__ sbbc_solscir ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_softc*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct uart_softc *sc)
{
	struct uart_bas *bas;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	int c;
	uint32_t end, rdptr, wrptr;

	bas = &sc->sc_bas;
	bst = bas->bst;
	bsh = bas->bsh;

	FUNC6(sc->sc_hwmtx);

	end = FUNC2(sbbc_solcons + FUNC0(cons_in_end));
	rdptr = FUNC2(sbbc_solcons + FUNC0(cons_in_rdptr));
	wrptr = FUNC2(sbbc_solcons + FUNC0(cons_in_wrptr));
	while (rdptr != wrptr) {
		if (FUNC7(sc) != 0) {
			sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
			break;
		}
		c = FUNC1(sbbc_solcons + rdptr);
		FUNC8(sc, c);
		if (++rdptr == end)
			rdptr = FUNC2(sbbc_solcons +
			    FUNC0(cons_in_begin));
	}
	FUNC5(bas);
	FUNC3(sbbc_solcons + FUNC0(cons_in_rdptr),
	    rdptr);
	FUNC5(bas);
	FUNC3(sbbc_solscir, FUNC2(sbbc_solscir) |
	    SBBC_SRAM_CONS_SPACE_IN);
	FUNC5(bas);
	FUNC4(bst, bsh);

	FUNC9(sc->sc_hwmtx);
	return (0);
}