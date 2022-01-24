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
 int /*<<< orphan*/  FUNC5 (int,int,char*) ; 

__attribute__((used)) static void
FUNC6(FILE *f1, FILE *f2, int flags)
{
	struct context_vec *cvp = context_vec_start;
	int lowa, upb, lowc, upd, do_output;
	int a, b, c, d;
	char ch, *f;

	if (context_vec_start > context_vec_ptr)
		return;

	b = d = 0;		/* gcc */
	lowa = FUNC0(1, cvp->a - diff_context);
	upb = FUNC1(len[0], context_vec_ptr->b + diff_context);
	lowc = FUNC0(1, cvp->c - diff_context);
	upd = FUNC1(len[1], context_vec_ptr->d + diff_context);

	FUNC2("***************");
	if ((flags & D_PROTOTYPE)) {
		f = FUNC4(ixold, lowa-1, f1);
		if (f != NULL)
			FUNC2(" %s", f);
	}
	FUNC2("\n*** ");
	FUNC5(lowa, upb, ",");
	FUNC2(" ****\n");

	/*
	 * Output changes to the "old" file.  The first loop suppresses
	 * output if there were no changes to the "old" file (we'll see
	 * the "old" lines as context in the "new" list).
	 */
	do_output = 0;
	for (; cvp <= context_vec_ptr; cvp++)
		if (cvp->a <= cvp->b) {
			cvp = context_vec_start;
			do_output++;
			break;
		}
	if (do_output) {
		while (cvp <= context_vec_ptr) {
			a = cvp->a;
			b = cvp->b;
			c = cvp->c;
			d = cvp->d;

			if (a <= b && c <= d)
				ch = 'c';
			else
				ch = (a <= b) ? 'd' : 'a';

			if (ch == 'a')
				FUNC3(ixold, lowa, b, f1, ' ', 0, flags);
			else {
				FUNC3(ixold, lowa, a - 1, f1, ' ', 0, flags);
				FUNC3(ixold, a, b, f1,
				    ch == 'c' ? '!' : '-', 0, flags);
			}
			lowa = b + 1;
			cvp++;
		}
		FUNC3(ixold, b + 1, upb, f1, ' ', 0, flags);
	}
	/* output changes to the "new" file */
	FUNC2("--- ");
	FUNC5(lowc, upd, ",");
	FUNC2(" ----\n");

	do_output = 0;
	for (cvp = context_vec_start; cvp <= context_vec_ptr; cvp++)
		if (cvp->c <= cvp->d) {
			cvp = context_vec_start;
			do_output++;
			break;
		}
	if (do_output) {
		while (cvp <= context_vec_ptr) {
			a = cvp->a;
			b = cvp->b;
			c = cvp->c;
			d = cvp->d;

			if (a <= b && c <= d)
				ch = 'c';
			else
				ch = (a <= b) ? 'd' : 'a';

			if (ch == 'd')
				FUNC3(ixnew, lowc, d, f2, ' ', 0, flags);
			else {
				FUNC3(ixnew, lowc, c - 1, f2, ' ', 0, flags);
				FUNC3(ixnew, c, d, f2,
				    ch == 'c' ? '!' : '+', 0, flags);
			}
			lowc = d + 1;
			cvp++;
		}
		FUNC3(ixnew, d + 1, upd, f2, ' ', 0, flags);
	}
	context_vec_ptr = context_vec_start - 1;
}