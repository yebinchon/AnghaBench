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
struct lock_delay_config {int base; int max; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_ncpus ; 

void
FUNC1(struct lock_delay_config *lc)
{

	lc->base = 1;
	lc->max = FUNC0(mp_ncpus) * 256;
	if (lc->max > 32678)
		lc->max = 32678;
}