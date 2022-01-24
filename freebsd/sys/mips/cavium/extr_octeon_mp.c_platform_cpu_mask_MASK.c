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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_2__ {scalar_t__ core_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAXCPU ; 
 TYPE_1__* FUNC2 () ; 

void
FUNC3(cpuset_t *mask)
{
	uint64_t core_mask = FUNC2()->core_mask;
	uint64_t i, m;

	FUNC1(mask);
	for (i = 0, m = 1 ; i < MAXCPU; i++, m <<= 1)
		if (core_mask & m)
			FUNC0(i, mask);
}