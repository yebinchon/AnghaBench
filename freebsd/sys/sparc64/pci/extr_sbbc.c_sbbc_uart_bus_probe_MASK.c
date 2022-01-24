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
struct uart_bas {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct uart_softc {void* sc_txfifosz; void* sc_rxfifosz; struct uart_bas sc_bas; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  cons_in_begin ; 
 int /*<<< orphan*/  cons_in_end ; 
 int /*<<< orphan*/  cons_out_begin ; 
 int /*<<< orphan*/  cons_out_end ; 
 scalar_t__ sbbc_console ; 
 scalar_t__ sbbc_solcons ; 

__attribute__((used)) static int
FUNC2(struct uart_softc *sc)
{
	struct uart_bas *bas;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;

	if (sbbc_console != 0) {
		bas = &sc->sc_bas;
		bst = bas->bst;
		bsh = bas->bsh;
		sc->sc_rxfifosz = FUNC1(sbbc_solcons +
		    FUNC0(cons_in_end)) - FUNC1(sbbc_solcons +
		    FUNC0(cons_in_begin)) - 1;
		sc->sc_txfifosz = FUNC1(sbbc_solcons +
		    FUNC0(cons_out_end)) - FUNC1(sbbc_solcons +
		    FUNC0(cons_out_begin)) - 1;
		return (0);
	}
	return (ENXIO);
}