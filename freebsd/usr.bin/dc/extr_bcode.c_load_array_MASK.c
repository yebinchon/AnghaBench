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
struct value {scalar_t__ type; } ;
struct stack {int dummy; } ;
struct number {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {struct stack* reg; } ;

/* Variables and functions */
 scalar_t__ BCODE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_ARRAY_INDEX ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct value* FUNC3 (struct stack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct number*) ; 
 int /*<<< orphan*/  FUNC5 (struct number*) ; 
 struct number* FUNC6 () ; 
 struct number* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct number*) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct value*,struct value*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(void)
{
	struct number *inumber, *n;
	struct stack *stack;
	struct value *v;
	struct value copy;
	u_long idx;
	int reg;

	reg = FUNC10();
	if (reg >= 0) {
		inumber = FUNC7();
		if (inumber == NULL)
			return;
		idx = FUNC5(inumber);
		if (FUNC0(inumber->number))
			FUNC12("negative idx");
		else if (idx == ULONG_MAX || idx > MAX_ARRAY_INDEX)
			FUNC12("idx too big");
		else {
			stack = &bmachine.reg[reg];
			v = FUNC3(stack, idx);
			if (v == NULL || v->type == BCODE_NONE) {
				n = FUNC6();
				FUNC2(FUNC1(n->number));
				FUNC9(n);
			}
			else
				FUNC8(FUNC11(v, &copy));
		}
		FUNC4(inumber);
	}
}