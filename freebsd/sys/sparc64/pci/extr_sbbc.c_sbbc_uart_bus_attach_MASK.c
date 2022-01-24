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
struct uart_bas {int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; } ;
struct uart_softc {int /*<<< orphan*/  sc_hwmtx; struct uart_bas sc_bas; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SBBC_PCI_ENABLE_INT_A ; 
 int /*<<< orphan*/  SBBC_PCI_INT_ENABLE ; 
 int /*<<< orphan*/  SBBC_PCI_INT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int SBBC_SRAM_CONS_BRK ; 
 int SBBC_SRAM_CONS_IN ; 
 int SBBC_SRAM_CONS_SPACE_OUT ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  cons_out_rdptr ; 
 int /*<<< orphan*/  cons_out_wrptr ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ sbbc_scsolie ; 
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
	uint32_t wrptr;

	bas = &sc->sc_bas;
	bst = bas->bst;
	bsh = bas->bsh;

	FUNC6(sc->sc_hwmtx);

	/*
	 * Let the current output drain before enabling interrupts.  Not
	 * doing so tends to cause lost output when turning them on.
	 */
	wrptr = FUNC2(sbbc_solcons +
	    FUNC0(cons_out_wrptr));
	while (FUNC2(sbbc_solcons +
	    FUNC0(cons_out_rdptr)) != wrptr);
		FUNC4();

	/* Clear and acknowledge possibly outstanding interrupts. */
	FUNC3(sbbc_scsolir, 0);
	FUNC5(bas);
	FUNC1(SBBC_PCI_INT_STATUS,
	    FUNC2(sbbc_scsolir));
	FUNC5(bas);
	/* Enable PCI interrupts. */
	FUNC1(SBBC_PCI_INT_ENABLE, SBBC_PCI_ENABLE_INT_A);
	FUNC5(bas);
	/* Enable input from and output to SC as well as break interrupts. */
	FUNC3(sbbc_scsolie, FUNC2(sbbc_scsolie) |
	    SBBC_SRAM_CONS_IN | SBBC_SRAM_CONS_BRK |
	    SBBC_SRAM_CONS_SPACE_OUT);
	FUNC5(bas);

	FUNC7(sc->sc_hwmtx);
	return (0);
}