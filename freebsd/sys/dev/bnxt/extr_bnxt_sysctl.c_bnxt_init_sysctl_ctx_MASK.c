#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_ctx_list {int dummy; } ;
struct bnxt_softc {int /*<<< orphan*/  flow_ctrl_ctx; void* flow_ctrl_oid; int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_lro_ctx; void* hw_lro_oid; TYPE_2__* nvm_info; TYPE_1__* ver_info; int /*<<< orphan*/  hw_stats; void* hw_stats_oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  nvm_ctx; void* nvm_oid; } ;
struct TYPE_3__ {int /*<<< orphan*/  ver_ctx; void* ver_oid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt_softc*) ; 
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 void* FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct bnxt_softc *softc)
{
	struct sysctl_ctx_list *ctx;

	FUNC6(&softc->hw_stats);
	ctx = FUNC3(softc->dev);
	softc->hw_stats_oid = FUNC1(ctx,
	    FUNC2(FUNC4(softc->dev)), OID_AUTO,
	    "hwstats", CTLFLAG_RD, 0, "hardware statistics");
	if (!softc->hw_stats_oid) {
		FUNC5(&softc->hw_stats);
		return ENOMEM;
	}

	FUNC6(&softc->ver_info->ver_ctx);
	ctx = FUNC3(softc->dev);
	softc->ver_info->ver_oid = FUNC1(ctx,
	    FUNC2(FUNC4(softc->dev)), OID_AUTO,
	    "ver", CTLFLAG_RD, 0, "hardware/firmware version information");
	if (!softc->ver_info->ver_oid) {
		FUNC5(&softc->ver_info->ver_ctx);
		return ENOMEM;
	}

	if (FUNC0(softc)) {
		FUNC6(&softc->nvm_info->nvm_ctx);
		ctx = FUNC3(softc->dev);
		softc->nvm_info->nvm_oid = FUNC1(ctx,
		    FUNC2(FUNC4(softc->dev)), OID_AUTO,
		    "nvram", CTLFLAG_RD, 0, "nvram information");
		if (!softc->nvm_info->nvm_oid) {
			FUNC5(&softc->nvm_info->nvm_ctx);
			return ENOMEM;
		}
	}

	FUNC6(&softc->hw_lro_ctx);
	ctx = FUNC3(softc->dev);
	softc->hw_lro_oid = FUNC1(ctx,
	    FUNC2(FUNC4(softc->dev)), OID_AUTO,
	    "hw_lro", CTLFLAG_RD, 0, "hardware lro");
	if (!softc->hw_lro_oid) {
		FUNC5(&softc->hw_lro_ctx);
		return ENOMEM;
	}

	FUNC6(&softc->flow_ctrl_ctx);
	ctx = FUNC3(softc->dev);
	softc->flow_ctrl_oid = FUNC1(ctx,
	    FUNC2(FUNC4(softc->dev)), OID_AUTO,
	    "fc", CTLFLAG_RD, 0, "flow ctrl");
	if (!softc->flow_ctrl_oid) {
		FUNC5(&softc->flow_ctrl_ctx);
		return ENOMEM;
	}

	return 0;
}