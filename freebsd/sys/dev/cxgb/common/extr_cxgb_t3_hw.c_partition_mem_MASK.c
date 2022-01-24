#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tp_params {int chan_rx_size; int chan_tx_size; unsigned int tx_pg_size; unsigned int tx_num_pgs; unsigned int rx_pg_size; unsigned int rx_num_pgs; int ntimer_qs; unsigned int cm_size; } ;
struct TYPE_8__ {unsigned int nservers; unsigned int nfilters; unsigned int nroutes; } ;
struct TYPE_9__ {scalar_t__ rev; TYPE_1__ mc5; } ;
struct TYPE_10__ {TYPE_2__ params; int /*<<< orphan*/  mc5; } ;
typedef  TYPE_3__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_CIM_SDRAM_ADDR_SIZE ; 
 int /*<<< orphan*/  A_CIM_SDRAM_BASE_ADDR ; 
 int /*<<< orphan*/  A_TP_CMM_MM_MAX_PSTRUCT ; 
 int /*<<< orphan*/  A_TP_CMM_TIMER_BASE ; 
 int /*<<< orphan*/  A_TP_PARA_REG3 ; 
 int /*<<< orphan*/  A_TP_PMM_RX_BASE ; 
 int /*<<< orphan*/  A_TP_PMM_RX_MAX_PAGE ; 
 int /*<<< orphan*/  A_TP_PMM_RX_PAGE_SIZE ; 
 int /*<<< orphan*/  A_TP_PMM_SIZE ; 
 int /*<<< orphan*/  A_TP_PMM_TX_BASE ; 
 int /*<<< orphan*/  A_TP_PMM_TX_MAX_PAGE ; 
 int /*<<< orphan*/  A_TP_PMM_TX_PAGE_SIZE ; 
 scalar_t__ M_TXDATAACKIDX ; 
 int /*<<< orphan*/  SG_CQ_CONTEXT_BADDR ; 
 int /*<<< orphan*/  SG_EGR_CNTX_BADDR ; 
 unsigned int TCB_SIZE ; 
 int /*<<< orphan*/  TP_CMM_MM_BASE ; 
 int /*<<< orphan*/  TP_CMM_MM_PS_FLST_BASE ; 
 int /*<<< orphan*/  TP_CMM_MM_RX_FLST_BASE ; 
 int /*<<< orphan*/  TP_CMM_MM_TX_FLST_BASE ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC7(adapter_t *adap, const struct tp_params *p)
{
	unsigned int m, pstructs, tids = FUNC4(&adap->mc5);
	unsigned int timers = 0, timers_shift = 22;

	if (adap->params.rev > 0) {
		if (tids <= 16 * 1024) {
			timers = 1;
			timers_shift = 16;
		} else if (tids <= 64 * 1024) {
			timers = 2;
			timers_shift = 18;
		} else if (tids <= 256 * 1024) {
			timers = 3;
			timers_shift = 20;
		}
	}

	FUNC6(adap, A_TP_PMM_SIZE,
		     p->chan_rx_size | (p->chan_tx_size >> 16));

	FUNC6(adap, A_TP_PMM_TX_BASE, 0);
	FUNC6(adap, A_TP_PMM_TX_PAGE_SIZE, p->tx_pg_size);
	FUNC6(adap, A_TP_PMM_TX_MAX_PAGE, p->tx_num_pgs);
	FUNC5(adap, A_TP_PARA_REG3, FUNC1(M_TXDATAACKIDX),
			 FUNC1(FUNC2(p->tx_pg_size) - 12));

	FUNC6(adap, A_TP_PMM_RX_BASE, 0);
	FUNC6(adap, A_TP_PMM_RX_PAGE_SIZE, p->rx_pg_size);
	FUNC6(adap, A_TP_PMM_RX_MAX_PAGE, p->rx_num_pgs);

	pstructs = p->rx_num_pgs + p->tx_num_pgs;
	/* Add a bit of headroom and make multiple of 24 */
	pstructs += 48;
	pstructs -= pstructs % 24;
	FUNC6(adap, A_TP_CMM_MM_MAX_PSTRUCT, pstructs);

	m = tids * TCB_SIZE;
	FUNC3(adap, m, (64 << 10) * 64, SG_EGR_CNTX_BADDR);
	FUNC3(adap, m, (64 << 10) * 64, SG_CQ_CONTEXT_BADDR);
	FUNC6(adap, A_TP_CMM_TIMER_BASE, FUNC0(timers) | m);
	m += ((p->ntimer_qs - 1) << timers_shift) + (1 << 22);
	FUNC3(adap, m, pstructs * 64, TP_CMM_MM_BASE);
	FUNC3(adap, m, 64 * (pstructs / 24), TP_CMM_MM_PS_FLST_BASE);
	FUNC3(adap, m, 64 * (p->rx_num_pgs / 24), TP_CMM_MM_RX_FLST_BASE);
	FUNC3(adap, m, 64 * (p->tx_num_pgs / 24), TP_CMM_MM_TX_FLST_BASE);

	m = (m + 4095) & ~0xfff;
	FUNC6(adap, A_CIM_SDRAM_BASE_ADDR, m);
	FUNC6(adap, A_CIM_SDRAM_ADDR_SIZE, p->cm_size - m);

	tids = (p->cm_size - m - (3 << 20)) / 3072 - 32;
	m = FUNC4(&adap->mc5) - adap->params.mc5.nservers -
	    adap->params.mc5.nfilters - adap->params.mc5.nroutes;
	if (tids < m)
		adap->params.mc5.nservers += m - tids;
}