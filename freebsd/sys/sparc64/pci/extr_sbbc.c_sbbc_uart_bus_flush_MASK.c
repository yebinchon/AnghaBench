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
struct uart_softc {struct uart_bas sc_bas; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int UART_FLUSH_RECEIVER ; 
 int UART_FLUSH_TRANSMITTER ; 
 int /*<<< orphan*/  cons_in_rdptr ; 
 int /*<<< orphan*/  cons_in_wrptr ; 
 scalar_t__ sbbc_solcons ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*) ; 

__attribute__((used)) static int
FUNC4(struct uart_softc *sc, int what)
{
	struct uart_bas *bas;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;

	bas = &sc->sc_bas;
	bst = bas->bst;
	bsh = bas->bsh;

	if ((what & UART_FLUSH_TRANSMITTER) != 0)
		return (ENODEV);
	if ((what & UART_FLUSH_RECEIVER) != 0) {
		FUNC2(sbbc_solcons +
		    FUNC0(cons_in_rdptr),
		    FUNC1(sbbc_solcons +
		    FUNC0(cons_in_wrptr)));
		FUNC3(bas);
	}
	return (0);
}