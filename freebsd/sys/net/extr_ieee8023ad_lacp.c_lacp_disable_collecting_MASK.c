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
struct lacp_port {int /*<<< orphan*/  lp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_port*) ; 
 int /*<<< orphan*/  LACP_STATE_COLLECTING ; 

__attribute__((used)) static void
FUNC1(struct lacp_port *lp)
{
	FUNC0((lp, "collecting disabled\n"));
	lp->lp_state &= ~LACP_STATE_COLLECTING;
}