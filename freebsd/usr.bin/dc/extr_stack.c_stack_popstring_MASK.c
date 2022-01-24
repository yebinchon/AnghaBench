#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stack {size_t sp; TYPE_2__* stack; } ;
struct TYPE_3__ {char* string; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ u; int /*<<< orphan*/ * array; } ;

/* Variables and functions */
 scalar_t__ BCODE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct stack*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

char *
FUNC3(struct stack *stack)
{

	if (FUNC1(stack))
		return (NULL);
	FUNC0(stack->stack[stack->sp].array);
	stack->stack[stack->sp].array = NULL;
	if (stack->stack[stack->sp].type != BCODE_STRING) {
		FUNC2("not a string"); /* XXX remove */
		return (NULL);
	}
	return stack->stack[stack->sp--].u.string;
}