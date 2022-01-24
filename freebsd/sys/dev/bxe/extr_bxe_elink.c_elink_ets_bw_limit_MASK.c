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
typedef  int uint32_t ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int const ELINK_ETS_BW_LIMIT_CREDIT_WEIGHT ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1 ; 
 int /*<<< orphan*/  PBF_REG_COS0_WEIGHT ; 
 int /*<<< orphan*/  PBF_REG_COS1_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_params const*) ; 

void FUNC3(const struct elink_params *params, const uint32_t cos0_bw,
			const uint32_t cos1_bw)
{
	/* ETS disabled configuration*/
	struct bxe_softc *sc = params->sc;
	const uint32_t total_bw = cos0_bw + cos1_bw;
	uint32_t cos0_credit_weight = 0;
	uint32_t cos1_credit_weight = 0;

	FUNC0(sc, "ETS enabled BW limit configuration\n");

	if ((!total_bw) ||
	    (!cos0_bw) ||
	    (!cos1_bw)) {
		FUNC0(sc, "Total BW can't be zero\n");
		return;
	}

	cos0_credit_weight = (cos0_bw * ELINK_ETS_BW_LIMIT_CREDIT_WEIGHT)/
		total_bw;
	cos1_credit_weight = (cos1_bw * ELINK_ETS_BW_LIMIT_CREDIT_WEIGHT)/
		total_bw;

	FUNC2(params);

	FUNC1(sc, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_0, cos0_credit_weight);
	FUNC1(sc, NIG_REG_P0_TX_ARB_CREDIT_WEIGHT_1, cos1_credit_weight);

	FUNC1(sc, PBF_REG_COS0_WEIGHT, cos0_credit_weight);
	FUNC1(sc, PBF_REG_COS1_WEIGHT, cos1_credit_weight);
}