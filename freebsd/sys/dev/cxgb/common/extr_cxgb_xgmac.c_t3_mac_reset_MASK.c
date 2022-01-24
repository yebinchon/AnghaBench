#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct cmac {unsigned int offset; TYPE_2__* adapter; } ;
struct TYPE_8__ {scalar_t__ rev; } ;
struct TYPE_9__ {TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_MPS_CFG ; 
 scalar_t__ A_TP_PIO_ADDR ; 
 scalar_t__ A_TP_PIO_DATA ; 
 int A_TP_TX_DROP_CFG_CH0 ; 
 scalar_t__ A_XGM_INT_ENABLE ; 
 scalar_t__ A_XGM_PORT_CFG ; 
 scalar_t__ A_XGM_RESET_CTRL ; 
 scalar_t__ A_XGM_RX_CFG ; 
 scalar_t__ A_XGM_RX_MAX_PKT_SIZE_ERR_CNT ; 
 scalar_t__ A_XGM_TX_CFG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 unsigned int F_DISPAUSEFRAMES ; 
 unsigned int F_EN1536BFRAMES ; 
 unsigned int F_ENFORCEPKT ; 
 unsigned int F_ENHASHMCAST ; 
 unsigned int F_ENJUMBO ; 
 unsigned int F_MAC_RESET_ ; 
 unsigned int F_PCS_RESET_ ; 
 unsigned int F_PORT0ACTIVE ; 
 unsigned int F_PORT1ACTIVE ; 
 unsigned int F_RMFCS ; 
 int F_SAFESPEEDCHANGE ; 
 unsigned int F_TXPAUSEEN ; 
 int /*<<< orphan*/  M_PORTSPEED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*) ; 
 unsigned int FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct cmac*) ; 
 unsigned int FUNC10 (struct cmac*) ; 

__attribute__((used)) static int FUNC11(struct cmac *mac, int portspeed)
{
	u32 val, store_mps;
	adapter_t *adap = mac->adapter;
	unsigned int oft = mac->offset;
	int idx = FUNC2(mac);
	unsigned int store;

	/* Stop egress traffic to xgm*/
	store_mps = FUNC5(adap, A_MPS_CFG);
	if (!idx)
		FUNC6(adap, A_MPS_CFG, F_PORT0ACTIVE, 0);
	else
		FUNC6(adap, A_MPS_CFG, F_PORT1ACTIVE, 0);

	/* This will reduce the number of TXTOGGLES */
	/* Clear: to stop the NIC traffic */
	FUNC6(adap, A_MPS_CFG, F_ENFORCEPKT, 0);
	/* Ensure TX drains */
	FUNC6(adap, A_XGM_TX_CFG + oft, F_TXPAUSEEN, 0);

	/* PCS in reset */
	FUNC8(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
	(void) FUNC5(adap, A_XGM_RESET_CTRL + oft);    /* flush */

	/* Store A_TP_TX_DROP_CFG_CH0 */
	FUNC8(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
	store = FUNC5(adap, A_TP_PIO_DATA);

	FUNC3(10);

	/* Change DROP_CFG to 0xc0000011 */
	FUNC8(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
	FUNC8(adap, A_TP_PIO_DATA, 0xc0000011);

	/* Check for xgm Rx fifo empty */
	/* Increased loop count to 1000 from 5 cover 1G and 100Mbps case */
	if (FUNC7(adap, A_XGM_RX_MAX_PKT_SIZE_ERR_CNT + oft,
			    0x80000000, 1, 1000, 2) && portspeed < 0) {
		FUNC0(adap, "MAC %d Rx fifo drain failed\n", idx);
		return -1;
	}

	if (portspeed >= 0) {
		u32 intr = FUNC5(adap, A_XGM_INT_ENABLE + oft);

		/*
		 * safespeedchange: wipes out pretty much all XGMAC registers.
		 */

		FUNC6(adap, A_XGM_PORT_CFG + oft,
		    FUNC1(M_PORTSPEED) | F_SAFESPEEDCHANGE,
		    portspeed | F_SAFESPEEDCHANGE);
		(void) FUNC5(adap, A_XGM_PORT_CFG + oft);
		FUNC6(adap, A_XGM_PORT_CFG + oft,
		    F_SAFESPEEDCHANGE, 0);
		(void) FUNC5(adap, A_XGM_PORT_CFG + oft);
		FUNC4(mac);
		
		FUNC8(adap, A_XGM_INT_ENABLE + oft, intr);
	} else {

		FUNC8(adap, A_XGM_RESET_CTRL + oft, 0); /*MAC in reset*/
		(void) FUNC5(adap, A_XGM_RESET_CTRL + oft);    /* flush */

		val = FUNC10(mac);
		FUNC8(adap, A_XGM_RESET_CTRL + oft, val);
		(void) FUNC5(adap, A_XGM_RESET_CTRL + oft);  /* flush */
		if ((val & F_PCS_RESET_) && adap->params.rev) {
			FUNC3(1);
			FUNC9(mac);
		}
		FUNC8(adap, A_XGM_RX_CFG + oft,
			 F_DISPAUSEFRAMES | F_EN1536BFRAMES |
					F_RMFCS | F_ENJUMBO | F_ENHASHMCAST );
	}

	/* Restore the DROP_CFG */
	FUNC8(adap, A_TP_PIO_ADDR, A_TP_TX_DROP_CFG_CH0 + idx);
	FUNC8(adap, A_TP_PIO_DATA, store);

	/* Resume egress traffic to xgm */
	FUNC6(adap, A_MPS_CFG, F_PORT1ACTIVE | F_PORT0ACTIVE,
			 store_mps);

	/*  Set: re-enable NIC traffic */
	FUNC6(adap, A_MPS_CFG, F_ENFORCEPKT, F_ENFORCEPKT);

	return 0;
}