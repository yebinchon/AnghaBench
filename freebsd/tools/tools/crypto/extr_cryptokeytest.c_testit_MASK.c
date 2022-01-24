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
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(void)
{
	BIGNUM *a, *b, *c, *r1, *r2;
	BN_CTX *ctx;

	ctx = FUNC1();

	a = FUNC6();
	b = FUNC6();
	c = FUNC6();
	r1 = FUNC6();
	r2 = FUNC6();

	FUNC7(a, 1023, 0, 0);
	FUNC7(b, 1023, 0, 0);
	FUNC7(c, 1024, 0, 0);

	if (FUNC2(a, c) > 0) {
		BIGNUM *rem = FUNC6();

		FUNC4(rem, a, c, ctx);
		FUNC8(r2, rem, b, c);
		FUNC3(rem);
	} else {
		FUNC8(r2, a, b, c);
	}
	FUNC5(r1, a, b, c, ctx);

	if (FUNC2(r1, r2) != 0) {
		FUNC9(a, b, c, r1, r2);
	}

	FUNC3(r2);
	FUNC3(r1);
	FUNC3(c);
	FUNC3(b);
	FUNC3(a);
	FUNC0(ctx);
}