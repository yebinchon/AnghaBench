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
typedef  scalar_t__ wchar_t ;
typedef  scalar_t__ bwstring_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4(bwstring_iterator si1, bwstring_iterator se1,
    bwstring_iterator si2, bwstring_iterator se2)
{
	int cmp, diff;

	while ((si1 < se1) || (si2 < se2)) {
		diff = 0;

		while (((si1 < se1) &&
		    !FUNC3(FUNC0(si1))) ||
		    ((si2 < se2) && !FUNC3(FUNC0(si2)))) {
			wchar_t c1, c2;

			c1 = (si1 < se1) ? FUNC0(si1) : 0;
			c2 = (si2 < se2) ? FUNC0(si2) : 0;

			cmp = FUNC2(c1, c2);
			if (cmp)
				return (cmp);

			if (si1 < se1)
				si1 = FUNC1(si1, 1);
			if (si2 < se2)
				si2 = FUNC1(si2, 1);
		}

		while (FUNC0(si1) == L'0')
			si1 = FUNC1(si1, 1);

		while (FUNC0(si2) == L'0')
			si2 = FUNC1(si2, 1);

		while (FUNC3(FUNC0(si1)) &&
		    FUNC3(FUNC0(si2))) {
			if (!diff)
				diff = ((int)FUNC0(si1) -
				    (int)FUNC0(si2));
			si1 = FUNC1(si1, 1);
			si2 = FUNC1(si2, 1);
		}

		if (FUNC3(FUNC0(si1)))
			return (1);

		if (FUNC3(FUNC0(si2)))
			return (-1);

		if (diff)
			return (diff);
	}

	return (0);
}