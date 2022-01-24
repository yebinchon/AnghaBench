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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__,scalar_t__) ; 

int
FUNC5(int trgt, uint64_t bar, uint32_t size)
{
	uint64_t bar_tmp;
	uint32_t sr, sr_tmp;
	int i, law_max;

	if (size == 0)
		return (0);

	law_max = FUNC2();
	sr = FUNC0(trgt, size);

	/* Bail if already programmed. */
	for (i = 0; i < law_max; i++) {
		FUNC3(i, &bar_tmp, &sr_tmp);
		if (sr == sr_tmp && bar == bar_tmp)
			return (0);
	}

	/* Find an unused access window. */
	i = FUNC1();

	if (i == law_max)
		return (ENOSPC);

	FUNC4(i, bar, sr);
	return (0);
}