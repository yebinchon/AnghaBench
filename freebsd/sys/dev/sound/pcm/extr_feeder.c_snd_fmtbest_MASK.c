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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__*) ; 

u_int32_t
FUNC6(u_int32_t fmt, u_int32_t *fmts)
{
	u_int32_t best1, best2;
	u_int32_t score, score1, score2;

	if (FUNC5(fmt, fmts))
		return fmt;

	best1 = FUNC3(fmt, fmts);
	best2 = FUNC2(fmt, fmts);

	if (best1 != 0 && best2 != 0 && best1 != best2) {
		/*if (fmt & AFMT_STEREO)*/
		if (FUNC0(fmt) > 1)
			return best1;
		else {
			score = FUNC1(FUNC4(fmt));
			score1 = FUNC1(FUNC4(best1));
			score2 = FUNC1(FUNC4(best2));
			if (score1 == score2 || score1 == score)
				return best1;
			else if (score2 == score)
				return best2;
			else if (score1 > score2)
				return best1;
			return best2;
		}
	} else if (best2 == 0)
		return best1;
	else
		return best2;
}