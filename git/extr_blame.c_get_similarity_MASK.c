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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int *FUNC2(int *similarities,
			   int line_a, int local_line_b,
			   int closest_line_a, int max_search_distance_a)
{
	FUNC1(FUNC0(line_a - closest_line_a) <=
	       max_search_distance_a);
	return similarities + line_a - closest_line_a +
	       max_search_distance_a +
	       local_line_b * (max_search_distance_a * 2 + 1);
}