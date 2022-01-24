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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct atse_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/ * descr; int /*<<< orphan*/ * name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * descr; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int ATSE_RX_ERR_MAX ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_UINT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct atse_softc*,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 TYPE_1__* atse_mac_stats_regs ; 
 TYPE_2__* atse_rx_err_stats_regs ; 
 struct atse_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  sysctl_atse_mac_stats_proc ; 
 int /*<<< orphan*/  sysctl_atse_rx_err_stats_proc ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct sysctl_ctx_list *sctx;
	struct sysctl_oid *soid;
	struct atse_softc *sc;
	int i;

	sc = FUNC2(dev);
	sctx = FUNC3(dev);
	soid = FUNC4(dev);

	/* MAC statistics. */
	for (i = 0; i < FUNC5(atse_mac_stats_regs); i++) {
		if (atse_mac_stats_regs[i].name == NULL ||
		    atse_mac_stats_regs[i].descr == NULL) {
			continue;
		}

		FUNC0(sctx, FUNC1(soid), OID_AUTO,
		    atse_mac_stats_regs[i].name, CTLTYPE_UINT|CTLFLAG_RD,
		    sc, i, sysctl_atse_mac_stats_proc, "IU",
		    atse_mac_stats_regs[i].descr);
	}

	/* rx_err[]. */
	for (i = 0; i < ATSE_RX_ERR_MAX; i++) {
		if (atse_rx_err_stats_regs[i].name == NULL ||
		    atse_rx_err_stats_regs[i].descr == NULL) {
			continue;
		}

		FUNC0(sctx, FUNC1(soid), OID_AUTO,
		    atse_rx_err_stats_regs[i].name, CTLTYPE_UINT|CTLFLAG_RD,
		    sc, i, sysctl_atse_rx_err_stats_proc, "IU",
		    atse_rx_err_stats_regs[i].descr);
	}
}