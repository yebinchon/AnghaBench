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
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ath_softc {TYPE_2__* sc_ah; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_3__ {int ah_debug; int ah_ar5416_biasadj; int ah_dma_beacon_response_time; int ah_sw_beacon_response_time; int ah_additional_swba_backoff; int ah_force_full_reset; int ah_serialise_reg_war; } ;
struct TYPE_4__ {TYPE_1__ ah_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,char*) ; 
 struct sysctl_oid* FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct ath_softc *sc)
{
	struct sysctl_oid *tree = FUNC4(sc->sc_dev);
	struct sysctl_ctx_list *ctx = FUNC3(sc->sc_dev);
	struct sysctl_oid_list *child = FUNC2(tree);

	tree = FUNC1(ctx, child, OID_AUTO, "hal", CTLFLAG_RD,
	    NULL, "Atheros HAL parameters");
	child = FUNC2(tree);

	sc->sc_ah->ah_config.ah_debug = 0;
	FUNC0(ctx, child, OID_AUTO, "debug", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_debug, 0, "Atheros HAL debugging printfs");

	sc->sc_ah->ah_config.ah_ar5416_biasadj = 0;
	FUNC0(ctx, child, OID_AUTO, "ar5416_biasadj", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_ar5416_biasadj, 0,
	    "Enable 2GHz AR5416 direction sensitivity bias adjust");

	sc->sc_ah->ah_config.ah_dma_beacon_response_time = 2;
	FUNC0(ctx, child, OID_AUTO, "dma_brt", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_dma_beacon_response_time, 0,
	    "Atheros HAL DMA beacon response time");

	sc->sc_ah->ah_config.ah_sw_beacon_response_time = 10;
	FUNC0(ctx, child, OID_AUTO, "sw_brt", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_sw_beacon_response_time, 0,
	    "Atheros HAL software beacon response time");

	sc->sc_ah->ah_config.ah_additional_swba_backoff = 0;
	FUNC0(ctx, child, OID_AUTO, "swba_backoff", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_additional_swba_backoff, 0,
	    "Atheros HAL additional SWBA backoff time");

	sc->sc_ah->ah_config.ah_force_full_reset = 0;
	FUNC0(ctx, child, OID_AUTO, "force_full_reset", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_force_full_reset, 0,
	    "Force full chip reset rather than a warm reset");

	/*
	 * This is initialised by the driver.
	 */
	FUNC0(ctx, child, OID_AUTO, "serialise_reg_war", CTLFLAG_RW,
	    &sc->sc_ah->ah_config.ah_serialise_reg_war, 0,
	    "Force register access serialisation");
}