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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct sample_softc {int /*<<< orphan*/  sc_dev; } ;
struct ath_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct sample_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  ath_rate_sysctl_sample_rate ; 
 int /*<<< orphan*/  ath_rate_sysctl_smoothing_rate ; 
 int /*<<< orphan*/  ath_rate_sysctl_stats ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ath_softc *sc, struct sample_softc *ssc)
{
	struct sysctl_ctx_list *ctx = FUNC2(sc->sc_dev);
	struct sysctl_oid *tree = FUNC3(sc->sc_dev);

	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "smoothing_rate", CTLTYPE_INT | CTLFLAG_RW, ssc, 0,
	    ath_rate_sysctl_smoothing_rate, "I",
	    "sample: smoothing rate for avg tx time (%%)");
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "sample_rate", CTLTYPE_INT | CTLFLAG_RW, ssc, 0,
	    ath_rate_sysctl_sample_rate, "I",
	    "sample: percent air time devoted to sampling new rates (%%)");
	/* XXX max_successive_failures, stale_failure_timeout, min_switch */
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
	    "sample_stats", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
	    ath_rate_sysctl_stats, "I", "sample: print statistics");
}