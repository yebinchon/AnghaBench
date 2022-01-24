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
struct llentry {int /*<<< orphan*/  lle_hittime; scalar_t__ r_skip_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static void
FUNC2(struct llentry *lle)
{

	FUNC0(lle);
	lle->r_skip_req = 0;

	/*
	 * Set the hit time so the callback function
	 * can determine the remaining time before
	 * transiting to the DELAY state.
	 */
	lle->lle_hittime = time_uptime;
	FUNC1(lle);
}