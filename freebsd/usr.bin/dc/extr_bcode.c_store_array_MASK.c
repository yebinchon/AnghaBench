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
typedef  int /*<<< orphan*/  u_long ;
struct value {int dummy; } ;
struct stack {int dummy; } ;
struct number {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {struct stack* reg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_ARRAY_INDEX ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC1 (struct stack*,int /*<<< orphan*/ ,struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct number*) ; 
 int /*<<< orphan*/  FUNC3 (struct number*) ; 
 struct value* FUNC4 () ; 
 struct number* FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(void)
{
	struct number *inumber;
	struct value *value;
	struct stack *stack;
	u_long idx;
	int reg;

	reg = FUNC6();
	if (reg >= 0) {
		inumber = FUNC5();
		if (inumber == NULL)
			return;
		value = FUNC4();
		if (value == NULL) {
			FUNC2(inumber);
			return;
		}
		idx = FUNC3(inumber);
		if (FUNC0(inumber->number)) {
			FUNC8("negative idx");
			FUNC7(value);
		} else if (idx == ULONG_MAX || idx > MAX_ARRAY_INDEX) {
			FUNC8("idx too big");
			FUNC7(value);
		} else {
			stack = &bmachine.reg[reg];
			FUNC1(stack, idx, value);
		}
		FUNC2(inumber);
	}
}