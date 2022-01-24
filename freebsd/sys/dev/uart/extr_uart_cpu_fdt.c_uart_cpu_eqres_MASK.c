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
struct uart_bas {scalar_t__ bst; int /*<<< orphan*/  bsh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(struct uart_bas *b1, struct uart_bas *b2)
{

	if (b1->bst != b2->bst)
		return (0);
	if (FUNC0(b1->bsh) == 0)
		return (0);
	if (FUNC0(b2->bsh) == 0)
		return (0);
	return ((FUNC0(b1->bsh) == FUNC0(b2->bsh)) ? 1 : 0);
}