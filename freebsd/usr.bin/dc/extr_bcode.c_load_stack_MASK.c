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
struct stack {int dummy; } ;
struct TYPE_2__ {struct stack* reg; } ;

/* Variables and functions */
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int FUNC1 () ; 
 struct value* FUNC2 (struct stack*) ; 
 scalar_t__ FUNC3 (struct stack*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	struct stack *stack;
	struct value *value;
	int idx;

	idx = FUNC1();
	if (idx >= 0) {
		stack = &bmachine.reg[idx];
		value = NULL;
		if (FUNC3(stack) > 0) {
			value = FUNC2(stack);
		}
		if (value != NULL)
			FUNC0(value);
		else
			FUNC4("stack register '%c' (0%o) is empty",
			    idx, idx);
	}
}