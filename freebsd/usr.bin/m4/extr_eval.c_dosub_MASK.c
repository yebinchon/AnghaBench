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

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(const char *argv[], int argc)
{
	const char *ap, *fc, *k;
	int nc;

	ap = argv[2];		       /* target string */
#ifdef EXPR
	fc = ap + expr(argv[3]);       /* first char */
#else
	fc = ap + FUNC0(argv[3]);       /* first char */
#endif
	nc = FUNC4(fc);
	if (argc >= 5)
#ifdef EXPR
		nc = min(nc, expr(argv[4]));
#else
		nc = FUNC2(nc, FUNC0(argv[4]));
#endif
	if (fc >= ap && fc < ap + FUNC4(ap))
		for (k = fc + nc - 1; k >= fc; k--)
			FUNC3(*k);
}