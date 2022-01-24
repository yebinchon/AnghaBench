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
struct number {scalar_t__ scale; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct number*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 struct number* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct number*,scalar_t__) ; 
 struct number* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct number*) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct number	*a, *b, *r;

	a = FUNC6();
	if (a == NULL)
		return;
	b = FUNC6();
	if (b == NULL) {
		FUNC7(a);
		return;
	}

	r = FUNC4();

	r->scale = FUNC3(a->scale, b->scale);
	if (r->scale > a->scale)
		FUNC5(a, r->scale);
	else if (r->scale > b->scale)
		FUNC5(b, r->scale);
	FUNC1(FUNC0(r->number, b->number, a->number));
	FUNC7(r);
	FUNC2(a);
	FUNC2(b);
}