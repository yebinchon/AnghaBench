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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char* lbp ; 

__attribute__((used)) static void
FUNC2(void)
{
	for (; FUNC1(*lbp); ++lbp)
		continue;
	if (*lbp == '*') {
		for (++lbp; FUNC1(*lbp); ++lbp)
			continue;
		if (!FUNC0(*lbp))
			--lbp;			/* force failure */
		else
			while (FUNC0(*++lbp))
				continue;
	}
}