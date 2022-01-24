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
struct number {scalar_t__ scale; int /*<<< orphan*/  number; } ;
struct TYPE_2__ {scalar_t__ scale; } ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ bmachine ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct number*,scalar_t__) ; 

void
FUNC7(struct number *r, struct number *a, struct number *b, u_int scale)
{
	BN_CTX *ctx;

	/* Create copies of the scales, since r might be equal to a or b */
	u_int ascale = a->scale;
	u_int bscale = b->scale;
	u_int rscale = ascale + bscale;

	ctx = FUNC1();
	FUNC4(ctx);
	FUNC3(FUNC2(r->number, a->number, b->number, ctx));
	FUNC0(ctx);

	r->scale = rscale;
	if (rscale > bmachine.scale && rscale > ascale && rscale > bscale)
		FUNC6(r, FUNC5(scale, FUNC5(ascale, bscale)));
}