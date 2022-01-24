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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC2(void)
{
	uint32_t i,sr;
	uint64_t bar;
	int law_max;

	law_max = FUNC0();
	/* Find free LAW */
	for (i = 0; i < law_max; i++) {
		FUNC1(i, &bar, &sr);
		if ((sr & 0x80000000) == 0)
			break;
	}

	return (i);
}