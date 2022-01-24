#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lacp_port {TYPE_1__* lp_lsc; } ;
struct TYPE_2__ {scalar_t__ lsc_strict_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lacp_port*) ; 
 int /*<<< orphan*/  lacp_partner_admin_optimistic ; 
 int /*<<< orphan*/  lacp_partner_admin_strict ; 
 int /*<<< orphan*/  FUNC1 (struct lacp_port*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct lacp_port *lp)
{

	FUNC0(lp);

	if (lp->lp_lsc->lsc_strict_mode)
		FUNC1(lp,
		    &lacp_partner_admin_strict);
	else
		FUNC1(lp,
		    &lacp_partner_admin_optimistic);
}