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
struct value {int dummy; } ;
struct stack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*,struct value*) ; 
 int /*<<< orphan*/  FUNC1 (struct stack*,int /*<<< orphan*/ ) ; 
 struct value* FUNC2 (struct stack*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(struct stack *stack)
{
	struct value *value;
	struct value copy;

	value = FUNC2(stack);
	if (value == NULL) {
		FUNC3("stack empty");
		return;
	}
	FUNC1(stack, FUNC0(value, &copy));
}