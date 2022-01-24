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
typedef  scalar_t__ u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__*) ; 

__attribute__((used)) static u_int32_t
FUNC9(u_int32_t fmt, u_int32_t *fmts, int cheq)
{
	u_int32_t best, score, score2, oldscore;
	int i;

	if (fmt == 0 || fmts == NULL || fmts[0] == 0)
		return 0;

	if (FUNC8(fmt, fmts))
		return fmt;

	best = 0;
	score = FUNC7(fmt);
	oldscore = 0;
	for (i = 0; fmts[i] != 0; i++) {
		score2 = FUNC7(fmts[i]);
		if (cheq && !FUNC0(score, score2) &&
		    (FUNC2(score2, score) ||
		    (oldscore != 0 && FUNC1(score2, oldscore))))
				continue;
		if (oldscore == 0 ||
			    (FUNC6(score2) == FUNC6(score)) ||
			    (FUNC6(score2) == FUNC6(oldscore)) ||
			    (FUNC6(score2) > FUNC6(oldscore) &&
			    FUNC6(score2) < FUNC6(score)) ||
			    (FUNC6(score2) < FUNC6(oldscore) &&
			    FUNC6(score2) > FUNC6(score)) ||
			    (FUNC6(oldscore) < FUNC6(score) &&
			    FUNC6(score2) > FUNC6(oldscore))) {
			if (FUNC6(oldscore) != FUNC6(score2) ||
				    FUNC3(score) == FUNC3(score2) ||
				    ((FUNC3(oldscore) != FUNC3(score) &&
				    !FUNC4(score, oldscore) &&
				    (FUNC4(score, score2) ||
				    (!FUNC5(score, oldscore) &&
				    FUNC5(score, score2)))))) {
				best = fmts[i];
				oldscore = score2;
			}
		}
	}
	return best;
}