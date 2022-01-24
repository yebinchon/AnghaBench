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
struct number {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int /*<<< orphan*/ * reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct number* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct number*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct value*,struct value*) ; 
 struct value* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct number *n;
	struct value *v;
	struct value copy;
	int idx;

	idx = FUNC5();
	if (idx >= 0) {
		v = FUNC7(&bmachine.reg[idx]);
		if (v == NULL) {
			n = FUNC2();
			FUNC1(FUNC0(n->number));
			FUNC4(n);
		} else
			FUNC3(FUNC6(v, &copy));
	}
}