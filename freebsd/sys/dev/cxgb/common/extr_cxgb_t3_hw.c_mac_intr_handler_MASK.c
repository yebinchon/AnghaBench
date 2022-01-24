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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  xaui_pcs_align_change; int /*<<< orphan*/  xaui_pcs_ctc_err; int /*<<< orphan*/  serdes_signal_loss; int /*<<< orphan*/  rx_fifo_ovfl; int /*<<< orphan*/  tx_fifo_urun; int /*<<< orphan*/  rx_fifo_parity_err; int /*<<< orphan*/  tx_fifo_parity_err; } ;
struct cmac {scalar_t__ offset; TYPE_1__ stats; } ;
struct port_info {int /*<<< orphan*/  link_fault; struct cmac mac; } ;
typedef  int /*<<< orphan*/  adapter_t ;
struct TYPE_4__ {unsigned int nports0; } ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_CAUSE ; 
 scalar_t__ A_XGM_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int F_RXFIFO_OVERFLOW ; 
 int F_TXFIFO_UNDERRUN ; 
 int F_XAUIPCSALIGNCHANGE ; 
 int F_XAUIPCSCTCERR ; 
 int F_XGM_INT ; 
 int /*<<< orphan*/  LF_MAYBE ; 
 int /*<<< orphan*/  M_RXFIFO_PRTY_ERR ; 
 int /*<<< orphan*/  M_SERDES_LOS ; 
 int /*<<< orphan*/  M_TXFIFO_PRTY_ERR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int XGM_INTR_FATAL ; 
 struct port_info* FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct port_info*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC11(adapter_t *adap, unsigned int idx)
{
	u32 cause;
	struct port_info *pi;
	struct cmac *mac;

	idx = idx == 0 ? 0 : FUNC5(adap)->nports0; /* MAC idx -> port */
	pi = FUNC4(adap, idx);
	mac = &pi->mac;

	/*
	 * We mask out interrupt causes for which we're not taking interrupts.
	 * This allows us to use polling logic to monitor some of the other
	 * conditions when taking interrupts would impose too much load on the
	 * system.
	 */
	cause = (FUNC8(adap, A_XGM_INT_CAUSE + mac->offset)
		 & ~(F_RXFIFO_OVERFLOW));

	if (cause & FUNC3(M_TXFIFO_PRTY_ERR)) {
		mac->stats.tx_fifo_parity_err++;
		FUNC0(adap, "port%d: MAC TX FIFO parity error\n", idx);
	}
	if (cause & FUNC1(M_RXFIFO_PRTY_ERR)) {
		mac->stats.rx_fifo_parity_err++;
		FUNC0(adap, "port%d: MAC RX FIFO parity error\n", idx);
	}
	if (cause & F_TXFIFO_UNDERRUN)
		mac->stats.tx_fifo_urun++;
	if (cause & F_RXFIFO_OVERFLOW)
		mac->stats.rx_fifo_ovfl++;
	if (cause & FUNC2(M_SERDES_LOS))
		mac->stats.serdes_signal_loss++;
	if (cause & F_XAUIPCSCTCERR)
		mac->stats.xaui_pcs_ctc_err++;
	if (cause & F_XAUIPCSALIGNCHANGE)
		mac->stats.xaui_pcs_align_change++;
	if (cause & F_XGM_INT &
	    FUNC8(adap, A_XGM_INT_ENABLE + mac->offset)) {
		FUNC9(adap, A_XGM_INT_ENABLE + mac->offset,
		    F_XGM_INT, 0);

		/* link fault suspected */
		pi->link_fault = LF_MAYBE;
		FUNC7(pi);
	}

	if (cause & XGM_INTR_FATAL)
		FUNC6(adap);

	FUNC10(adap, A_XGM_INT_CAUSE + mac->offset, cause);
	return cause != 0;
}