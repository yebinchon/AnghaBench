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
struct tcptw {scalar_t__ tw_time; int /*<<< orphan*/  tw_inpcb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct tcptw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct tcptw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_tw_lock ; 
 int /*<<< orphan*/  V_twq_2msl ; 
 int tcp_msl ; 
 scalar_t__ ticks ; 
 int /*<<< orphan*/  tw_2msl ; 

__attribute__((used)) static void
FUNC6(struct tcptw *tw, int rearm)
{

	FUNC1();
	FUNC0(tw->tw_inpcb);

	FUNC4(V_tw_lock);
	if (rearm)
		FUNC3(&V_twq_2msl, tw, tw_2msl);
	tw->tw_time = ticks + 2 * tcp_msl;
	FUNC2(&V_twq_2msl, tw, tw_2msl);
	FUNC5(V_tw_lock);
}