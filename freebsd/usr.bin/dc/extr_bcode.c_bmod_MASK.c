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
typedef  int /*<<< orphan*/  u_int ;
struct number {int /*<<< orphan*/  number; int /*<<< orphan*/  scale; } ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct number*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct number* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct number*,int /*<<< orphan*/ ) ; 
 struct number* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct number*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void
FUNC13(void)
{
	struct number *a, *b, *r;
	BN_CTX *ctx;
	u_int scale;

	a = FUNC10();
	if (a == NULL)
		return;
	b = FUNC10();
	if (b == NULL) {
		FUNC11(a);
		return;
	}

	r = FUNC8();
	scale = FUNC7(a->scale, b->scale);
	r->scale = scale;

	if (FUNC2(a->number))
		FUNC12("remainder by zero");
	else {
		FUNC9(a, scale);
		FUNC9(b, scale);

		ctx = FUNC1();
		FUNC5(ctx);
		FUNC4(FUNC3(r->number, b->number, a->number, ctx));
		FUNC0(ctx);
	}
	FUNC11(r);
	FUNC6(a);
	FUNC6(b);
}