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
typedef  scalar_t__ u_int ;
struct number {int /*<<< orphan*/  number; scalar_t__ scale; } ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct number* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct number*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

struct number *
FUNC10(struct number *dividend, struct number *divisor, u_int bscale)
{
	struct number *quotient;
	BN_CTX *ctx;
	u_int scale;

	quotient = FUNC7();
	quotient->scale = bscale;
	scale = FUNC6(divisor->scale, dividend->scale);

	if (FUNC3(divisor->number))
		FUNC9("divide by zero");
	else {
		FUNC8(divisor, scale);
		FUNC8(dividend, scale + quotient->scale);

		ctx = FUNC1();
		FUNC5(ctx);
		FUNC4(FUNC2(quotient->number, NULL, dividend->number,
				divisor->number, ctx));
		FUNC0(ctx);
	}
	return (quotient);
}