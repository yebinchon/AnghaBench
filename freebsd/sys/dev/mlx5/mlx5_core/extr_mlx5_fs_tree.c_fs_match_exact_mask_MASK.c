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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 

bool FUNC2(u8 match_criteria_enable1,
				u8 match_criteria_enable2,
				void *mask1, void *mask2)
{
	return match_criteria_enable1 == match_criteria_enable2 &&
		!FUNC1(mask1, mask2, FUNC0(fte_match_param));
}