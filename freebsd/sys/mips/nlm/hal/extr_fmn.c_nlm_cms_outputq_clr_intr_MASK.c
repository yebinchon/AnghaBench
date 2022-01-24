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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long long FUNC1 (unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long,int /*<<< orphan*/ ,unsigned long long) ; 

void FUNC3(uint64_t base, int qid)
{
	uint64_t val;
	val = FUNC1(base, FUNC0(qid));
	val |= (1ULL<<59);
	FUNC2(base, FUNC0(qid), val);
}