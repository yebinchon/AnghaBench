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
struct ath_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  ath_rate_raise ; 
 int /*<<< orphan*/  ath_rate_raise_threshold ; 
 int /*<<< orphan*/  ath_rateinterval ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ath_softc *sc)
{
	struct sysctl_ctx_list *ctx = FUNC2(sc->sc_dev);
	struct sysctl_oid *tree = FUNC3(sc->sc_dev);

	FUNC0(ctx, FUNC1(tree), OID_AUTO,
		"rate_interval", CTLFLAG_RW, &ath_rateinterval, 0,
		"rate control: operation interval (ms)");
	/* XXX bounds check values */
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
		"rate_raise", CTLFLAG_RW, &ath_rate_raise, 0,
		"rate control: retry threshold to credit rate raise (%%)");
	FUNC0(ctx, FUNC1(tree), OID_AUTO,
		"rate_raise_threshold", CTLFLAG_RW, &ath_rate_raise_threshold,0,
		"rate control: # good periods before raising rate");
}