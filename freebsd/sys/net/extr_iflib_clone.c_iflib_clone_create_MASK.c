#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iflib_cloneattach_ctx {char const* cc_name; int /*<<< orphan*/  cc_params; scalar_t__ cc_len; struct if_clone* cc_ifc; } ;
struct if_clone {int dummy; } ;
typedef  TYPE_1__* if_pseudo_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  ip_sctx; int /*<<< orphan*/  ip_dc; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOENT ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC12 (struct if_clone*) ; 
 TYPE_1__* FUNC13 (char const*) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct iflib_cloneattach_ctx*) ; 
 int /*<<< orphan*/ * iflib_pseudodev ; 
 int /*<<< orphan*/  iflib_pseudodriver ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/ * root_bus ; 

__attribute__((used)) static int
FUNC18(struct if_clone *ifc, int unit, caddr_t params)
{
	const char *name = FUNC12(ifc);
	struct iflib_cloneattach_ctx clctx;
	if_ctx_t ctx;
	if_pseudo_t ip;
	device_t dev;
	int rc;

	clctx.cc_ifc = ifc;
	clctx.cc_len = 0;
	clctx.cc_params = params;
	clctx.cc_name = name;

	if (FUNC3(iflib_pseudodev == NULL)) {
		/* SYSINIT initialization would panic !?! */
		FUNC15(&Giant);
		iflib_pseudodev = FUNC6(root_bus, "ifpseudo", 0);
		FUNC16(&Giant);
		FUNC0(iflib_pseudodev != NULL);
	}
	ip = FUNC13(name);
	if (ip == NULL) {
		FUNC17("no ip found for %s\n", name);
		return (ENOENT);
	}
	if ((dev = FUNC5(ip->ip_dc, unit)) != NULL) {
		FUNC17("unit %d allocated\n", unit);
		FUNC4(iflib_pseudodev, dev);
		return (EBUSY);
	}
	FUNC1();
	dev = FUNC6(iflib_pseudodev, name, unit);
	FUNC10(dev, &iflib_pseudodriver);
	FUNC2();
	FUNC9(dev);
	rc = FUNC7(dev);
	FUNC0(rc == 0);
	FUNC0(dev != NULL);
	FUNC0(FUNC5(ip->ip_dc, unit) == dev);
	rc = FUNC14(dev, ip->ip_sctx, &ctx, &clctx);
	if (rc) {
		FUNC15(&Giant);
		FUNC8(iflib_pseudodev, dev);
		FUNC16(&Giant);
	} else
		FUNC11(dev, ctx);

	return (rc);
}