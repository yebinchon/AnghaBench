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
struct context_vec {int a; int b; int c; int d; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int D_PROTOTYPE ; 
 int FUNC0 (int,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct context_vec* context_vec_ptr ; 
 struct context_vec* context_vec_start ; 
 scalar_t__ diff_context ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,char,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ixnew ; 
 int /*<<< orphan*/  ixold ; 
 int /*<<< orphan*/ * len ; 
 char* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(FILE *f1, FILE *f2, int flags)
{
	struct context_vec *cvp = context_vec_start;
	int lowa, upb, lowc, upd;
	int a, b, c, d;
	char ch, *f;

	if (context_vec_start > context_vec_ptr)
		return;

	b = d = 0;		/* gcc */
	lowa = FUNC0(1, cvp->a - diff_context);
	upb = FUNC1(len[0], context_vec_ptr->b + diff_context);
	lowc = FUNC0(1, cvp->c - diff_context);
	upd = FUNC1(len[1], context_vec_ptr->d + diff_context);

	FUNC2("@@ -");
	FUNC5(lowa, upb);
	FUNC2(" +");
	FUNC5(lowc, upd);
	FUNC2(" @@");
	if ((flags & D_PROTOTYPE)) {
		f = FUNC4(ixold, lowa-1, f1);
		if (f != NULL)
			FUNC2(" %s", f);
	}
	FUNC2("\n");

	/*
	 * Output changes in "unified" diff format--the old and new lines
	 * are printed together.
	 */
	for (; cvp <= context_vec_ptr; cvp++) {
		a = cvp->a;
		b = cvp->b;
		c = cvp->c;
		d = cvp->d;

		/*
		 * c: both new and old changes
		 * d: only changes in the old file
		 * a: only changes in the new file
		 */
		if (a <= b && c <= d)
			ch = 'c';
		else
			ch = (a <= b) ? 'd' : 'a';

		switch (ch) {
		case 'c':
			FUNC3(ixold, lowa, a - 1, f1, ' ', 0, flags);
			FUNC3(ixold, a, b, f1, '-', 0, flags);
			FUNC3(ixnew, c, d, f2, '+', 0, flags);
			break;
		case 'd':
			FUNC3(ixold, lowa, a - 1, f1, ' ', 0, flags);
			FUNC3(ixold, a, b, f1, '-', 0, flags);
			break;
		case 'a':
			FUNC3(ixnew, lowc, c - 1, f2, ' ', 0, flags);
			FUNC3(ixnew, c, d, f2, '+', 0, flags);
			break;
		}
		lowa = b + 1;
		lowc = d + 1;
	}
	FUNC3(ixnew, d + 1, upd, f2, ' ', 0, flags);

	context_vec_ptr = context_vec_start - 1;
}