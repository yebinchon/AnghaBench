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
typedef  int /*<<< orphan*/  pv_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ pv_entry_count ; 
 scalar_t__ pv_entry_high_water ; 
 int /*<<< orphan*/  pvzone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

pv_entry_t
FUNC2(void)
{
	pv_entry_t pv;

	pv_entry_count++;
	if (pv_entry_count > pv_entry_high_water)
		FUNC0(0); /* XXX powerpc NUMA */
	pv = FUNC1(pvzone, M_NOWAIT);

	return (pv);
}