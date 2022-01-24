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
struct keys_array {int dummy; } ;
struct file_reader {int dummy; } ;
struct bwstring {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  csilentflag; scalar_t__ uflag; int /*<<< orphan*/  sflag; scalar_t__ complex_sort; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bwstring*,char const*,size_t) ; 
 struct bwstring* FUNC1 (struct bwstring*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwstring*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bwstring*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bwstring*,struct keys_array*) ; 
 scalar_t__ debug_sort ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct file_reader*) ; 
 struct file_reader* FUNC8 (char const*) ; 
 struct bwstring* FUNC9 (struct file_reader*) ; 
 int FUNC10 (struct keys_array*,struct keys_array*,int /*<<< orphan*/ ) ; 
 struct keys_array* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct bwstring*,struct keys_array*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct keys_array*) ; 
 TYPE_1__ sort_opts_vals ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC15 (char const*,char*) ; 
 int FUNC16 (struct bwstring*,struct bwstring*) ; 

int
FUNC17(const char *fn)
{
	struct bwstring *s1, *s2, *s1disorder, *s2disorder;
	struct file_reader *fr;
	struct keys_array *ka1, *ka2;
	int res;
	size_t pos, posdisorder;

	s1 = s2 = s1disorder = s2disorder = NULL;
	ka1 = ka2 = NULL;

	fr = FUNC8(fn);

	res = 0;
	pos = 1;
	posdisorder = 1;

	if (fr == NULL) {
		FUNC5(2, NULL);
		goto end;
	}

	s1 = FUNC9(fr);
	if (s1 == NULL)
		goto end;

	ka1 = FUNC11();
	FUNC12(s1, ka1);

	s2 = FUNC9(fr);
	if (s2 == NULL)
		goto end;

	ka2 = FUNC11();
	FUNC12(s2, ka2);

	for (;;) {

		if (debug_sort) {
			FUNC3(stdout, s2, "s1=<", ">");
			FUNC3(stdout, s1, "s2=<", ">");
		}
		int cmp = FUNC10(ka2, ka1, 0);
		if (debug_sort)
			FUNC13("; cmp1=%d", cmp);

		if (!cmp && sort_opts_vals.complex_sort &&
		    !(sort_opts_vals.uflag) && !(sort_opts_vals.sflag)) {
			cmp = FUNC16(s2, s1);
			if (debug_sort)
				FUNC13("; cmp2=%d", cmp);
		}
		if (debug_sort)
			FUNC13("\n");

		if ((sort_opts_vals.uflag && (cmp <= 0)) || (cmp < 0)) {
			if (!(sort_opts_vals.csilentflag)) {
				s2disorder = FUNC1(s2);
				posdisorder = pos;
				if (debug_sort)
					s1disorder = FUNC1(s1);
			}
			res = 1;
			goto end;
		}

		pos++;

		FUNC4(s1, ka1);
		FUNC14(ka1);
		ka1 = ka2;
		ka2 = NULL;

		FUNC2(s1);
		s1 = s2;

		s2 = FUNC9(fr);
		if (s2 == NULL)
			goto end;

		ka2 = FUNC11();
		FUNC12(s2, ka2);
	}

end:
	if (ka1) {
		FUNC4(s1, ka1);
		FUNC14(ka1);
	}

	if (s1)
		FUNC2(s1);

	if (ka2) {
		FUNC4(s2, ka2);
		FUNC14(ka2);
	}

	if (s2)
		FUNC2(s2);

	if ((fn == NULL) || (*fn == 0) || (FUNC15(fn, "-") == 0)) {
		for (;;) {
			s2 = FUNC9(fr);
			if (s2 == NULL)
				break;
			FUNC2(s2);
		}
	}

	FUNC7(fr);

	if (s2disorder) {
		FUNC0(s2disorder, fn, posdisorder);
		if (s1disorder) {
			FUNC0(s1disorder, fn, posdisorder);
			if (s1disorder != s2disorder)
				FUNC2(s1disorder);
		}
		FUNC2(s2disorder);
		s1disorder = NULL;
		s2disorder = NULL;
	}

	if (res)
		FUNC6(res);

	return (0);
}