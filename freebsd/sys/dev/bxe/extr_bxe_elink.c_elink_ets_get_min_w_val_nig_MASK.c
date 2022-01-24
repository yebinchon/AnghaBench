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
typedef  int /*<<< orphan*/  uint32_t ;
struct elink_vars {scalar_t__ line_speed; scalar_t__ link_up; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS ; 
 int /*<<< orphan*/  ELINK_ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS ; 
 scalar_t__ ELINK_SPEED_20000 ; 

__attribute__((used)) static uint32_t FUNC0(const struct elink_vars *vars)
{
	uint32_t min_w_val = 0;
	/* Calculate min_w_val.*/
	if (vars->link_up) {
		if (vars->line_speed == ELINK_SPEED_20000)
			min_w_val = ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS;
		else
			min_w_val = ELINK_ETS_E3B0_NIG_MIN_W_VAL_UP_TO_10GBPS;
	} else
		min_w_val = ELINK_ETS_E3B0_NIG_MIN_W_VAL_20GBPS;
	/* If the link isn't up (static configuration for example ) The
	 * link will be according to 20GBPS.
	 */
	return min_w_val;
}