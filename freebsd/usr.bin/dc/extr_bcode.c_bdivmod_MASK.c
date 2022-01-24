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
typedef  scalar_t__ u_int ;
struct number {int /*<<< orphan*/  number; scalar_t__ scale; } ;
struct TYPE_2__ {scalar_t__ scale; } ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct number* FUNC7 (struct number*,struct number*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct number*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 struct number* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct number*,scalar_t__) ; 
 struct number* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct number*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(void)
{
	struct number *a, *b, *frac, *quotient, *rdiv, *remainder;
	BN_CTX *ctx;
	u_int scale;

	a = FUNC12();
	if (a == NULL)
		return;
	b = FUNC12();
	if (b == NULL) {
		FUNC13(a);
		return;
	}

	rdiv = FUNC10();
	quotient = FUNC10();
	remainder = FUNC10();
	scale = FUNC9(a->scale, b->scale);
	rdiv->scale = 0;
	remainder->scale = scale;
	quotient->scale = bmachine.scale;
	scale = FUNC9(a->scale, b->scale);

	if (FUNC4(a->number))
		FUNC14("divide by zero");
	else {
		FUNC11(a, scale);
		FUNC11(b, scale);

		ctx = FUNC1();
		FUNC6(ctx);
		/*
		 * Unlike other languages' divmod operations, dc is specified
		 * to return the remainder and the full quotient, rather than
		 * the remainder and the floored quotient.  bn(3) has no
		 * function to calculate both.  So we'll use BN_div to get the
		 * remainder and floored quotient, then calculate the full
		 * quotient from those.
		 *
		 * quotient = rdiv + remainder / divisor
		 */
		FUNC5(FUNC3(rdiv->number, remainder->number,
		    b->number, a->number, ctx));
		frac = FUNC7(remainder, a, bmachine.scale);
		FUNC11(rdiv, bmachine.scale);
		FUNC11(remainder, scale);
		FUNC5(FUNC2(quotient->number, rdiv->number, frac->number));
		FUNC8(frac);
		FUNC0(ctx);
	}
	FUNC13(quotient);
	FUNC13(remainder);
	FUNC8(rdiv);
	FUNC8(a);
	FUNC8(b);
}