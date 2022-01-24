#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int /*<<< orphan*/  lip_state; } ;
struct lacp_port {int /*<<< orphan*/  lp_state; TYPE_2__ lp_partner; TYPE_1__* lp_lsc; } ;
struct TYPE_4__ {scalar_t__ lsc_strict_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LACP_STATE_DEFAULTED ; 
 int /*<<< orphan*/  FUNC0 (struct lacp_port*) ; 
 TYPE_2__ lacp_partner_admin_optimistic ; 
 TYPE_2__ lacp_partner_admin_strict ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct lacp_port *lp)
{
	uint8_t oldpstate;

	FUNC0(lp);

	oldpstate = lp->lp_partner.lip_state;
	if (lp->lp_lsc->lsc_strict_mode)
		lp->lp_partner = lacp_partner_admin_strict;
	else
		lp->lp_partner = lacp_partner_admin_optimistic;
	lp->lp_state |= LACP_STATE_DEFAULTED;
	FUNC1(lp, oldpstate);
}