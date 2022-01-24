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
struct number {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCODE_NOT_GREATER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct number*,struct number*) ; 
 struct number* FUNC3 () ; 
 struct number* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct number*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	struct number *a, *b, *r;

	a = FUNC4();
	if (a == NULL)
		return;
	b = FUNC4();
	if (b == NULL) {
		FUNC5(a);
		return;
	}
	r = FUNC3();
	FUNC1(FUNC0(r->number,
	    FUNC2(BCODE_NOT_GREATER, a, b) ? 1 : 0));
	FUNC5(r);
}