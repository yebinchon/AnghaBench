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
struct bcm_platform {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_PMU_ALP_CLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_platform*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_platform*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC3(struct bcm_platform *bp) {
	if (!FUNC1(bp))
		return (BHND_PMU_ALP_CLOCK);

	return (FUNC2(FUNC0(bp)));
}