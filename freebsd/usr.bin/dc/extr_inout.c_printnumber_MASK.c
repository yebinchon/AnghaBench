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
typedef  int /*<<< orphan*/  u_long ;
typedef  int u_int ;
struct stack {int dummy; } ;
typedef  struct number {scalar_t__ scale; int /*<<< orphan*/ * number; } const number ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  BN_ULONG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct number const*,struct number const*,struct number const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ charcount ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (struct number const*) ; 
 char* FUNC18 (int /*<<< orphan*/ ,int,int) ; 
 int lastchar ; 
 struct number const* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct number const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC24 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct number const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct stack*) ; 
 int /*<<< orphan*/  FUNC27 (struct stack*) ; 
 char* FUNC28 (struct stack*) ; 
 int /*<<< orphan*/  FUNC29 (struct stack*,char*) ; 

void
FUNC30(FILE *f, const struct number *b, u_int base)
{
	struct number *fract_part, *int_part;
	struct stack stack;
	char *p;
	char buf[11];
	size_t sz;
	unsigned int i;
	int digits;

	charcount = 0;
	lastchar = -1;
	if (FUNC5(b->number))
		FUNC22(f, '0');

	int_part = FUNC19();
	fract_part = FUNC19();
	fract_part->scale = b->scale;

	if (base <= 16)
		digits = 1;
	else {
		digits = FUNC24(buf, sizeof(buf), "%u", base-1);
	}
	FUNC25(b, int_part->number, fract_part->number);

	i = 0;
	FUNC27(&stack);
	while (!FUNC5(int_part->number)) {
		BN_ULONG rem = FUNC1(int_part->number, base);
		FUNC29(&stack, FUNC18(rem, digits, base));
		i++;
	}
	sz = i;
	if (FUNC4(b->number))
		FUNC22(f, '-');
	for (i = 0; i < sz; i++) {
		p = FUNC28(&stack);
		if (base > 16)
			FUNC22(f, ' ');
		FUNC21(f, p);
		FUNC16(p);
	}
	FUNC26(&stack);
	if (b->scale > 0) {
		struct number *num_base;
		BIGNUM *mult, *stop;

		FUNC22(f, '.');
		num_base = FUNC19();
		FUNC13(FUNC9(num_base->number, base));
		mult = FUNC7();
		FUNC14(mult);
		FUNC13(FUNC8(mult));
		stop = FUNC7();
		FUNC14(stop);
		FUNC13(FUNC8(stop));
		FUNC23(stop, b->scale);

		i = 0;
		while (FUNC0(mult, stop) < 0) {
			u_long rem;

			if (i && base > 16)
				FUNC22(f, ' ');
			i = 1;

			FUNC12(fract_part, fract_part, num_base,
			    FUNC11());
			FUNC25(fract_part, int_part->number, NULL);
			rem = FUNC3(int_part->number);
			p = FUNC18(rem, digits, base);
			int_part->scale = 0;
			FUNC20(int_part, fract_part->scale);
			FUNC13(FUNC10(fract_part->number, fract_part->number,
			    int_part->number));
			FUNC21(f, p);
			FUNC16(p);
			FUNC13(FUNC6(mult, base));
		}
		FUNC17(num_base);
		FUNC2(mult);
		FUNC2(stop);
	}
	FUNC15(f);
	FUNC17(int_part);
	FUNC17(fract_part);
}