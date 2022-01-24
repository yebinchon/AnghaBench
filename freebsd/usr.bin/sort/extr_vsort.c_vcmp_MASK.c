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
typedef  int wchar_t ;
struct bwstring {int dummy; } ;
typedef  int /*<<< orphan*/  bwstring_iterator ;

/* Variables and functions */
 size_t FUNC0 (struct bwstring*) ; 
 int /*<<< orphan*/  FUNC1 (struct bwstring*) ; 
 int /*<<< orphan*/  FUNC2 (struct bwstring*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (struct bwstring*,struct bwstring*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 

int
FUNC9(struct bwstring *s1, struct bwstring *s2)
{
	bwstring_iterator si1, si2;
	wchar_t c1, c2;
	size_t len1, len2, slen1, slen2;
	int cmp_bytes, cmp_res;

	if (s1 == s2)
		return (0);

	cmp_bytes = FUNC6(s1, s2, 0);
	if (cmp_bytes == 0)
		return (0);

	len1 = slen1 = FUNC0(s1);
	len2 = slen2 = FUNC0(s2);

	if (slen1 < 1)
		return (-1);
	if (slen2 < 1)
		return (+1);

	si1 = FUNC1(s1);
	si2 = FUNC1(s2);

	c1 = FUNC3(si1);
	c2 = FUNC3(si2);

	if (c1 == L'.' && (slen1 == 1))
		return (-1);

	if (c2 == L'.' && (slen2 == 1))
		return (+1);

	if (slen1 == 2 && c1 == L'.' &&
	    FUNC3(FUNC5(si1, 1)) == L'.')
		return (-1);
	if (slen2 == 2 && c2 == L'.' &&
	    FUNC3(FUNC5(si2, 1)) == L'.')
		return (+1);

	if (c1 == L'.' && c2 != L'.')
		return (-1);
	if (c1 != L'.' && c2 == L'.')
		return (+1);

	if (c1 == L'.' && c2 == L'.') {
		si1 = FUNC5(si1, 1);
		si2 = FUNC5(si2, 1);
	}

	FUNC8(si1, FUNC2(s1), &len1);
	FUNC8(si2, FUNC2(s2), &len2);

	if ((len1 == len2) && (FUNC4(si1, si2, len1) == 0))
		return (cmp_bytes);

	cmp_res = FUNC7(si1, FUNC5(si1, len1), si2,
	    FUNC5(si2, len2));

	if (cmp_res == 0)
	  cmp_res = cmp_bytes;

	return (cmp_res);
}