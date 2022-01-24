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
typedef  int /*<<< orphan*/  uint16_t ;
struct rtwn_softc {int ntxchains; } ;
struct r92ce_iq_cal_reg_vals {int dummy; } ;

/* Variables and functions */
 int RTWN_IQ_CAL_NRUN ; 
 int FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,struct r92ce_iq_cal_reg_vals*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC3(struct rtwn_softc *sc)
{
	struct r92ce_iq_cal_reg_vals vals;
	uint16_t tx[RTWN_IQ_CAL_NRUN][2][2], rx[RTWN_IQ_CAL_NRUN][2][2];
	int n, valid;

	valid = 0;
	for (n = 0; n < RTWN_IQ_CAL_NRUN; n++) {
		FUNC1(sc, n, tx[n], rx[n], &vals);

		if (n == 0)
			continue;

		/* Valid results remain stable after consecutive runs. */
		valid = FUNC0(sc, tx[n - 1],
		    rx[n - 1], tx[n], rx[n]);
		if (valid)
			break;
	}

	if (valid) {
		FUNC2(sc, tx[n][0], rx[n][0], 0);
		if (sc->ntxchains > 1)
			FUNC2(sc, tx[n][1], rx[n][1], 1);
	}
}