#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int nchan; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_TX_ORATE ; 
 int /*<<< orphan*/  A_TP_TX_TRATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC10(struct adapter *adap, u64 *nic_rate, u64 *ofld_rate)
{
	u32 v;

	v = FUNC9(adap, A_TP_TX_TRATE);
	nic_rate[0] = FUNC8(adap, FUNC4(v));
	nic_rate[1] = FUNC8(adap, FUNC5(v));
	if (adap->chip_params->nchan > 2) {
		nic_rate[2] = FUNC8(adap, FUNC6(v));
		nic_rate[3] = FUNC8(adap, FUNC7(v));
	}

	v = FUNC9(adap, A_TP_TX_ORATE);
	ofld_rate[0] = FUNC8(adap, FUNC0(v));
	ofld_rate[1] = FUNC8(adap, FUNC1(v));
	if (adap->chip_params->nchan > 2) {
		ofld_rate[2] = FUNC8(adap, FUNC2(v));
		ofld_rate[3] = FUNC8(adap, FUNC3(v));
	}
}