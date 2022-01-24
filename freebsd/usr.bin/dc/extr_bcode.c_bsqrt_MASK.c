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
typedef  int u_int ;
struct number {int scale; int /*<<< orphan*/ * number; } ;
struct TYPE_2__ {int /*<<< orphan*/  scale; } ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__ bmachine ; 
 struct number* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct number*) ; 
 int FUNC18 (int /*<<< orphan*/ ,int) ; 
 struct number* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct number*,int) ; 
 struct number* FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct number*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

__attribute__((used)) static void
FUNC24(void)
{
	struct number *n, *r;
	BIGNUM *x, *y;
	BN_CTX *ctx;
	u_int onecount, scale;

	onecount = 0;
	n = FUNC21();
	if (n == NULL)
		return;
	if (FUNC8(n->number)) {
		r = FUNC19();
		FUNC22(r);
	} else if (FUNC7(n->number))
		FUNC23("square root of negative number");
	else {
		scale = FUNC18(bmachine.scale, n->scale);
		FUNC20(n, 2*scale);
		x = FUNC5(n->number);
		FUNC15(x);
		FUNC14(FUNC11(x, x, FUNC10(x)/2));
		y = FUNC9();
		FUNC15(y);
		ctx = FUNC1();
		FUNC15(ctx);
		for (;;) {
			FUNC15(FUNC3(y, x));
			FUNC14(FUNC4(x, NULL, n->number, x, ctx));
			FUNC14(FUNC2(x, x, y));
			FUNC14(FUNC12(x, x));
			if (FUNC16(x, y, &onecount))
				break;
		}
		r = FUNC13(sizeof(*r));
		r->scale = scale;
		r->number = y;
		FUNC6(x);
		FUNC0(ctx);
		FUNC22(r);
	}

	FUNC17(n);
}