#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value {int /*<<< orphan*/ * array; int /*<<< orphan*/  type; } ;
struct stack {int sp; TYPE_1__* stack; } ;
struct array {int dummy; } ;
struct TYPE_2__ {struct array* array; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct array*,size_t,struct value const*) ; 
 struct array* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct stack*,struct value*) ; 

void
FUNC3(struct stack *stack, size_t i, const struct value *v)
{
	struct array *a;
	struct value n;

	if (stack->sp == -1) {
		n.type = BCODE_NONE;
		n.array = NULL;
		FUNC2(stack, &n);
	}

	a = stack->stack[stack->sp].array;
	if (a == NULL)
		a = stack->stack[stack->sp].array = FUNC1();
	FUNC0(a, i, v);
}