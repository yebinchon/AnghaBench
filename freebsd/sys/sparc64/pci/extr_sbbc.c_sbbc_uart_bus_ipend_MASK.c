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
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBBC_PCI_INT_STATUS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SBBC_SRAM_CONS_BRK ; 
 scalar_t__ SBBC_SRAM_CONS_IN ; 
 scalar_t__ SBBC_SRAM_CONS_SPACE_OUT ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int SER_INT_BREAK ; 
 int SER_INT_RXREADY ; 
 int SER_INT_TXIDLE ; 
 int /*<<< orphan*/  cons_out_rdptr ; 
 int /*<<< orphan*/  cons_out_wrptr ; 
 scalar_t__ sbbc_scsolir ; 
 scalar_t__ sbbc_solcons ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct uart_softc *sc)
{
	struct uart_bas *bas;
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	int ipend;
	uint32_t reason, status;

	bas = &sc->sc_bas;
	bst = bas->bst;
	bsh = bas->bsh;

	FUNC6(sc->sc_hwmtx);
	status = FUNC1(SBBC_PCI_INT_STATUS);
	if (status == 0) {
		FUNC7(sc->sc_hwmtx);
		return (0);
	}

	/*
	 * Unfortunately, we can't use compare and swap for non-cachable
	 * memory.
	 */
	reason = FUNC3(sbbc_scsolir);
	FUNC4(sbbc_scsolir, 0);
	FUNC5(bas);
	/* Acknowledge the interrupt. */
	FUNC2(SBBC_PCI_INT_STATUS, status);
	FUNC5(bas);

	FUNC7(sc->sc_hwmtx);

	ipend = 0;
	if ((reason & SBBC_SRAM_CONS_IN) != 0)
		ipend |= SER_INT_RXREADY;
	if ((reason & SBBC_SRAM_CONS_BRK) != 0)
		ipend |= SER_INT_BREAK;
	if ((reason & SBBC_SRAM_CONS_SPACE_OUT) != 0 &&
	    FUNC3(sbbc_solcons + FUNC0(cons_out_rdptr)) ==
	    FUNC3(sbbc_solcons + FUNC0(cons_out_wrptr)))
		ipend |= SER_INT_TXIDLE;
	return (ipend);
}