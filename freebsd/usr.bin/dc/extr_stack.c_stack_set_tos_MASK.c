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
struct value {int /*<<< orphan*/ * array; } ;
struct stack {int sp; struct value* stack; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct stack*,struct value*) ; 

void
FUNC3(struct stack *stack, struct value *v)
{

	if (stack->sp == -1)
		FUNC2(stack, v);
	else {
		FUNC1(&stack->stack[stack->sp]);
		stack->stack[stack->sp] = *v;
		stack->stack[stack->sp].array = v->array == NULL ?
		    NULL : FUNC0(v->array);
	}
}