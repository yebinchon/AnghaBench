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
struct uart_softc {int sc_txdatasz; int sc_txbusy; int /*<<< orphan*/  sc_hwmtx; int /*<<< orphan*/ * sc_txbuf; struct uart_bas sc_bas; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SBBC_SRAM_CONS_OUT ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  cons_out_begin ; 
 int /*<<< orphan*/  cons_out_end ; 
 int /*<<< orphan*/  cons_out_wrptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sbbc_solcons ; 
 scalar_t__ sbbc_solscir ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct uart_softc *sc)
{
	struct uart_bas *bas;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	int i;
	uint32_t end, wrptr;

	bas = &sc->sc_bas;
	bst = bas->bst;
	bsh = bas->bsh;

	FUNC6(sc->sc_hwmtx);

	end = FUNC1(sbbc_solcons + FUNC0(cons_out_end));
	wrptr = FUNC1(sbbc_solcons +
	    FUNC0(cons_out_wrptr));
	for (i = 0; i < sc->sc_txdatasz; i++) {
		FUNC2(sbbc_solcons + wrptr, sc->sc_txbuf[i]);
		if (++wrptr == end)
			wrptr = FUNC1(sbbc_solcons +
			    FUNC0(cons_out_begin));
	}
	FUNC5(bas);
	FUNC3(sbbc_solcons + FUNC0(cons_out_wrptr),
	    wrptr);
	FUNC5(bas);
	FUNC3(sbbc_solscir, FUNC1(sbbc_solscir) |
	    SBBC_SRAM_CONS_OUT);
	FUNC5(bas);
	FUNC4(bst, bsh);
	sc->sc_txbusy = 1;

	FUNC7(sc->sc_hwmtx);
	return (0);
}