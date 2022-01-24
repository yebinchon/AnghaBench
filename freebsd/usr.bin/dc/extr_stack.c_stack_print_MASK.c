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
typedef  int /*<<< orphan*/  u_int ;
struct stack {size_t sp; int /*<<< orphan*/ * stack; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 

void
FUNC2(FILE *f, const struct stack *stack, const char *prefix, u_int base)
{
	ssize_t i;

	for (i = stack->sp; i >= 0; i--) {
		FUNC0(f, &stack->stack[i], prefix, base);
		FUNC1('\n', f);
	}
}