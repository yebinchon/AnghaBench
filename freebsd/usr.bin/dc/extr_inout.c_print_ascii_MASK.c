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
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

void
FUNC8(FILE *f, const struct number *n)
{
	BIGNUM *v;
	int ch, i, numbits;

	v = FUNC0(n->number);
	FUNC6(v);

	if (FUNC3(v))
		FUNC5(v, 0);

	numbits = FUNC4(v) * 8;
	while (numbits > 0) {
		ch = 0;
		for (i = 0; i < 8; i++)
			ch |= FUNC2(v, numbits-i-1) << (7 - i);
		FUNC7(ch, f);
		numbits -= 8;
	}
	FUNC1(v);
}