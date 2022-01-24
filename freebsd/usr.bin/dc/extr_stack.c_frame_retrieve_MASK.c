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
struct value {int dummy; } ;
struct stack {int sp; TYPE_1__* stack; } ;
struct array {int dummy; } ;
struct TYPE_2__ {struct array* array; } ;

/* Variables and functions */
 struct array* FUNC0 () ; 
 struct value* FUNC1 (struct array*,size_t) ; 

struct value *
FUNC2(const struct stack *stack, size_t i)
{
	struct array *a;

	if (stack->sp == -1)
		return (NULL);
	a = stack->stack[stack->sp].array;
	if (a == NULL)
		a = stack->stack[stack->sp].array = FUNC0();
	return FUNC1(a, i);
}