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
 unsigned long long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 

void
FUNC2(int irq)
{
	uint64_t eimr;

	eimr = FUNC0();
	FUNC1(eimr | (1ULL << irq));
}