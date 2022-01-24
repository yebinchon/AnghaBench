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
struct source {TYPE_1__* vtable; } ;
struct number {int scale; int /*<<< orphan*/ * number; } ;
struct TYPE_2__ {int (* readchar ) (struct source*) ;int /*<<< orphan*/  (* unreadchar ) (struct source*) ;} ;
typedef  int BN_ULONG ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int EOF ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct number* FUNC10 (struct number*,struct number*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct number*) ; 
 int /*<<< orphan*/  FUNC12 (struct number*) ; 
 struct number* FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct number*,scalar_t__) ; 
 int FUNC15 (struct source*) ; 
 int /*<<< orphan*/  FUNC16 (struct source*) ; 

struct number *
FUNC17(struct source *src, u_int base, u_int bscale)
{
	struct number *n;
	BN_ULONG v;
	int ch;
	u_int iscale = 0;
	bool dot = false, sign = false;

	n = FUNC13();
	FUNC9(FUNC8(n->number));

	while ((ch = (*src->vtable->readchar)(src)) != EOF) {

		if ('0' <= ch && ch <= '9')
			v = ch - '0';
		else if ('A' <= ch && ch <= 'F')
			v = ch - 'A' + 10;
		else if (ch == '_') {
			sign = true;
			continue;
		} else if (ch == '.') {
			if (dot)
				break;
			dot = true;
			continue;
		} else {
			(*src->vtable->unreadchar)(src);
			break;
		}
		if (dot)
			iscale++;

		FUNC9(FUNC6(n->number, base));
		FUNC9(FUNC2(n->number, v));
	}
	if (base == 10) {
		n->scale = iscale;
	} else {
		/* At this point, the desired result is n->number / base^iscale*/
		struct number *quotient, *divisor, *_n;
		BIGNUM *base_n, *exponent;
		BN_CTX *ctx;

		ctx = FUNC1();
		base_n = FUNC7();
		exponent = FUNC7();
		divisor = FUNC13();
		FUNC9(FUNC8(base_n));
		FUNC9(FUNC8(exponent));

		FUNC9(FUNC2(base_n, base));
		FUNC9(FUNC2(exponent, iscale));
		FUNC9(FUNC3(divisor->number, base_n, exponent, ctx));
		divisor->scale = 0;
		quotient = FUNC10(n, divisor, bscale);
		_n = n;
		n = quotient;

		/* 
		 * Trim off trailing zeros to yield the smallest scale without
		 * loss of accuracy
		 */
		while ( n->scale > 0 &&
			FUNC5(n->number, 10) == 0) {
			FUNC14(n, n->scale - 1);
		}

		FUNC11(_n);
		FUNC11(divisor);
		FUNC0(ctx);
		FUNC4(base_n);
		FUNC4(exponent);
	}
	if (sign)
		FUNC12(n);
	return (n);
}