#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cclk; } ;
struct TYPE_6__ {TYPE_1__ vpd; int /*<<< orphan*/  rev; } ;
struct TYPE_7__ {TYPE_2__ params; int /*<<< orphan*/  tunq_coalesce; int /*<<< orphan*/  port_types; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  dev; } ;
typedef  TYPE_3__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxgb_debug ; 
 struct sysctl_ctx_list* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txq_fills ; 

void
FUNC7(adapter_t *sc)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid_list *children;

	ctx = FUNC5(sc->dev);
	children = FUNC4(FUNC6(sc->dev));

	/* random information */
	FUNC1(ctx, children, OID_AUTO, 
	    "firmware_version",
	    CTLFLAG_RD, sc->fw_version,
	    0, "firmware version");
	FUNC2(ctx, children, OID_AUTO,
	    "hw_revision",
	    CTLFLAG_RD, &sc->params.rev,
	    0, "chip model");
	FUNC1(ctx, children, OID_AUTO, 
	    "port_types",
	    CTLFLAG_RD, sc->port_types,
	    0, "type of ports");
	FUNC0(ctx, children, OID_AUTO, 
	    "enable_debug",
	    CTLFLAG_RW, &cxgb_debug,
	    0, "enable verbose debugging output");
	FUNC3(ctx, children, OID_AUTO, "tunq_coalesce",
	    CTLFLAG_RD, &sc->tunq_coalesce,
	    "#tunneled packets freed");
	FUNC0(ctx, children, OID_AUTO, 
	    "txq_overrun",
	    CTLFLAG_RD, &txq_fills,
	    0, "#times txq overrun");
	FUNC2(ctx, children, OID_AUTO,
	    "core_clock",
	    CTLFLAG_RD, &sc->params.vpd.cclk,
	    0, "core clock frequency (in KHz)");
}