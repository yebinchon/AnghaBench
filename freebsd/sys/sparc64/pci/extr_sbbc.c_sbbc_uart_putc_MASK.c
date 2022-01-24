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
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int SBBC_SRAM_CONS_OUT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  cons_out_begin ; 
 int /*<<< orphan*/  cons_out_end ; 
 int /*<<< orphan*/  cons_out_wrptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int sbbc_solcons ; 
 int sbbc_solscir ; 
 int /*<<< orphan*/  FUNC5 (struct uart_bas*) ; 

__attribute__((used)) static void
FUNC6(struct uart_bas *bas, int c)
{
	bus_space_tag_t bst;
	bus_space_handle_t bsh;
	uint32_t wrptr;

	bst = bas->bst;
	bsh = bas->bsh;

	wrptr = FUNC1(sbbc_solcons +
	    FUNC0(cons_out_wrptr));
	FUNC2(sbbc_solcons + wrptr, c);
	FUNC5(bas);
	if (++wrptr == FUNC1(sbbc_solcons +
	    FUNC0(cons_out_end)))
		wrptr = FUNC1(sbbc_solcons +
		    FUNC0(cons_out_begin));
	FUNC3(sbbc_solcons + FUNC0(cons_out_wrptr),
	    wrptr);
	FUNC5(bas);

	FUNC3(sbbc_solscir, FUNC1(sbbc_solscir) |
	    SBBC_SRAM_CONS_OUT);
	FUNC5(bas);
	FUNC4(bst, bsh);
}