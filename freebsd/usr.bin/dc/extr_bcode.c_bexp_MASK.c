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
typedef  scalar_t__ u_long ;
typedef  int u_int ;
struct number {scalar_t__ scale; int /*<<< orphan*/ * number; } ;
struct TYPE_2__ {int scale; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ ULONG_MAX ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC11 (struct number*,struct number*,struct number*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct number* FUNC14 (struct number*) ; 
 int /*<<< orphan*/  FUNC15 (struct number*) ; 
 int FUNC16 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (struct number*) ; 
 struct number* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct number*,int) ; 
 struct number* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct number*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (struct number*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

__attribute__((used)) static void
FUNC25(void)
{
	struct number	*a, *p;
	struct number	*r;
	bool		neg;
	u_int		rscale;

	p = FUNC20();
	if (p == NULL)
		return;
	a = FUNC20();
	if (a == NULL) {
		FUNC21(p);
		return;
	}

	if (p->scale != 0) {
		BIGNUM *i, *f;
		i = FUNC8();
		FUNC13(i);
		f = FUNC8();
		FUNC13(f);
		FUNC23(p, i, f);
		if (!FUNC7(f))
			FUNC24("Runtime warning: non-zero fractional part in exponent");
		FUNC3(i);
		FUNC3(f);
	}

	FUNC19(p, 0);

	neg = false;
	if (FUNC6(p->number)) {
		neg = true;
		FUNC17(p);
		rscale = bmachine.scale;
	} else {
		/* Posix bc says min(a.scale * b, max(a.scale, scale) */
		u_long b;
		u_int m;

		b = FUNC4(p->number);
		m = FUNC16(a->scale, bmachine.scale);
		rscale = a->scale * (u_int)b;
		if (rscale > m || (a->scale > 0 && (b == ULONG_MAX ||
		    b > UINT_MAX)))
			rscale = m;
	}

	if (FUNC7(p->number)) {
		r = FUNC18();
		FUNC12(FUNC9(r->number));
		FUNC19(r, rscale);
	} else {
		u_int ascale, mscale;

		ascale = a->scale;
		while (!FUNC5(p->number, 0)) {
			ascale *= 2;
			FUNC11(a, a, a, ascale);
			FUNC12(FUNC10(p->number, p->number));
		}

		r = FUNC14(a);
		FUNC12(FUNC10(p->number, p->number));

		mscale = ascale;
		while (!FUNC7(p->number)) {
			ascale *= 2;
			FUNC11(a, a, a, ascale);
			if (FUNC5(p->number, 0)) {
				mscale += ascale;
				FUNC11(r, r, a, mscale);
			}
			FUNC12(FUNC10(p->number, p->number));
		}

		if (neg) {
			BN_CTX *ctx;
			BIGNUM *one;

			one = FUNC8();
			FUNC13(one);
			FUNC12(FUNC9(one));
			ctx = FUNC1();
			FUNC13(ctx);
			FUNC22(one, r->scale + rscale);

			if (FUNC7(r->number))
				FUNC24("divide by zero");
			else
				FUNC12(FUNC2(r->number, NULL, one,
				    r->number, ctx));
			FUNC3(one);
			FUNC0(ctx);
			r->scale = rscale;
		} else
			FUNC19(r, rscale);
	}
	FUNC21(r);
	FUNC15(a);
	FUNC15(p);
}