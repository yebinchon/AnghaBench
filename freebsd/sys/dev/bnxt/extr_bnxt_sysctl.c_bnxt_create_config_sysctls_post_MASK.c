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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bnxt_softc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CTLFLAG_RWTUN ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct bnxt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnxt_vlan_only_sysctl ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct bnxt_softc *softc)
{
	struct sysctl_ctx_list *ctx = FUNC2(softc->dev);
	struct sysctl_oid_list *children;

	children = FUNC1(FUNC3(softc->dev));;

	FUNC0(ctx, children, OID_AUTO, "vlan_only",
	    CTLTYPE_INT|CTLFLAG_RWTUN, softc, 0, bnxt_vlan_only_sysctl, "I",
	    "require vlan tag on received packets when vlan is enabled");

	return 0;
}