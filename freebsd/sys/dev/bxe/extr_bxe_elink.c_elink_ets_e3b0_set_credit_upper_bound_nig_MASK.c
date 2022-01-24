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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct elink_params {scalar_t__ port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7 ; 
 int /*<<< orphan*/  NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8 ; 
 int /*<<< orphan*/  NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 ; 
 int /*<<< orphan*/  NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 ; 
 int /*<<< orphan*/  NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 ; 
 int /*<<< orphan*/  NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 ; 
 int /*<<< orphan*/  NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 ; 
 int /*<<< orphan*/  NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(
	const struct elink_params *params,
	const uint32_t min_w_val)
{
	struct bxe_softc *sc = params->sc;
	const uint8_t port = params->port;
	const uint32_t credit_upper_bound =
	    FUNC1(min_w_val);

	FUNC0(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_0 :
		NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_0, credit_upper_bound);
	FUNC0(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_1 :
		   NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_1, credit_upper_bound);
	FUNC0(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_2 :
		   NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_2, credit_upper_bound);
	FUNC0(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_3 :
		   NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_3, credit_upper_bound);
	FUNC0(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_4 :
		   NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_4, credit_upper_bound);
	FUNC0(sc, (port) ? NIG_REG_P1_TX_ARB_CREDIT_UPPER_BOUND_5 :
		   NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_5, credit_upper_bound);

	if (!port) {
		FUNC0(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_6,
			credit_upper_bound);
		FUNC0(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_7,
			credit_upper_bound);
		FUNC0(sc, NIG_REG_P0_TX_ARB_CREDIT_UPPER_BOUND_8,
			credit_upper_bound);
	}
}