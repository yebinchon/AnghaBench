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
 int /*<<< orphan*/  V_in6_tmpaddrtimer_ch ; 
 int V_ip6_desync_factor ; 
 int V_ip6_temp_preferred_lifetime ; 
 int V_ip6_temp_regen_advance ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 int hz ; 
 int /*<<< orphan*/  in6_tmpaddrtimer ; 

__attribute__((used)) static void
FUNC2(void *dummy)
{

	/* Timer for regeneranation of temporary addresses randomize ID. */
	FUNC0(&V_in6_tmpaddrtimer_ch, 0);
	FUNC1(&V_in6_tmpaddrtimer_ch,
	    (V_ip6_temp_preferred_lifetime - V_ip6_desync_factor -
	    V_ip6_temp_regen_advance) * hz,
	    in6_tmpaddrtimer, curvnet);
}