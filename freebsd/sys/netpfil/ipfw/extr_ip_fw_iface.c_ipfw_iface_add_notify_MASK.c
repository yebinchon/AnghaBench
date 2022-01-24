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
struct ipfw_ifc {int /*<<< orphan*/  cbdata; int /*<<< orphan*/  (* cb ) (struct ip_fw_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct ipfw_iface* iface; } ;
struct ipfw_iface {scalar_t__ resolved; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  consumers; } ;
struct ip_fw_chain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ipfw_ifc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC3 (struct ip_fw_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ip_fw_chain *ch, struct ipfw_ifc *ic)
{
	struct ipfw_iface *iif;

	FUNC0(ch);
	FUNC1(ch);

	iif = ic->iface;
	
	FUNC2(&iif->consumers, ic, next);
	if (iif->resolved != 0)
		ic->cb(ch, ic->cbdata, iif->ifindex);
}