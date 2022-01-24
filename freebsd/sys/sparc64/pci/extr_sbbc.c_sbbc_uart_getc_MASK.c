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
struct mtx {int dummy; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SBBC_SRAM_CONS_SPACE_IN ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  cons_in_begin ; 
 int /*<<< orphan*/  cons_in_end ; 
 int /*<<< orphan*/  cons_in_rdptr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sbbc_solcons ; 
 int sbbc_solscir ; 
 scalar_t__ FUNC6 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_bas*) ; 
 int /*<<< orphan*/  FUNC8 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC9 (struct mtx*) ; 

__attribute__((used)) static int
FUNC10(struct uart_bas *bas, struct mtx *hwmtx)
{
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	int c;
	uint32_t rdptr;

	bst = bas->bst;
	bsh = bas->bsh;

	FUNC8(hwmtx);

	while (FUNC6(bas) == 0) {
		FUNC9(hwmtx);
		FUNC0(4);
		FUNC8(hwmtx);
	}

	rdptr = FUNC3(sbbc_solcons + FUNC1(cons_in_rdptr));
	c = FUNC2(sbbc_solcons + rdptr);
	FUNC7(bas);
	if (++rdptr == FUNC3(sbbc_solcons +
	    FUNC1(cons_in_end)))
		rdptr = FUNC3(sbbc_solcons +
		    FUNC1(cons_in_begin));
	FUNC4(sbbc_solcons + FUNC1(cons_in_rdptr),
	    rdptr);
	FUNC7(bas);
	FUNC4(sbbc_solscir, FUNC3(sbbc_solscir) |
	    SBBC_SRAM_CONS_SPACE_IN);
	FUNC7(bas);
	FUNC5(bst, bsh);

	FUNC9(hwmtx);
	return (c);
}