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
typedef  void* u64 ;
typedef  int u32 ;
struct mac_stats {scalar_t__ rx_pause; void* tx_frames; } ;
struct cmac {unsigned int tx_tcnt; scalar_t__ rx_pause; int toggle_cnt; unsigned int tx_xcnt; scalar_t__ offset; scalar_t__ txen; void* tx_mcnt; scalar_t__ multiport; struct mac_stats stats; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 scalar_t__ A_MPS_CFG ; 
 scalar_t__ A_TP_PIO_ADDR ; 
 scalar_t__ A_TP_PIO_DATA ; 
 scalar_t__ A_TP_TX_DROP_CNT_CH0 ; 
 scalar_t__ A_XGM_STAT_TX_FRAME_LOW ; 
 scalar_t__ A_XGM_TX_CTRL ; 
 scalar_t__ A_XGM_TX_SPI4_SOP_EOP_CNT ; 
 int F_ENFORCEPKT ; 
 int F_PORT0ACTIVE ; 
 int F_PORT1ACTIVE ; 
 unsigned int FUNC0 (void*) ; 
 unsigned int FUNC1 (void*) ; 
 scalar_t__ FUNC2 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

int FUNC6(struct cmac *mac)
{
	int status;
	unsigned int tx_tcnt, tx_xcnt;
	adapter_t *adap = mac->adapter;
	struct mac_stats *s = &mac->stats;
	u64 tx_mcnt = s->tx_frames;

	if (mac->multiport)
		tx_mcnt = FUNC4(adap, A_XGM_STAT_TX_FRAME_LOW);

	status = 0;
	tx_xcnt = 1; /* By default tx_xcnt is making progress*/
	tx_tcnt = mac->tx_tcnt; /* If tx_mcnt is progressing ignore tx_tcnt*/
	if (tx_mcnt == mac->tx_mcnt && mac->rx_pause == s->rx_pause) {
		u32 cfg, active, enforcepkt;

		tx_xcnt = (FUNC1(FUNC4(adap,
						      A_XGM_TX_SPI4_SOP_EOP_CNT +
						      mac->offset)));
		cfg = FUNC4(adap, A_MPS_CFG);
		active = FUNC2(mac) ? cfg & F_PORT1ACTIVE : cfg & F_PORT0ACTIVE;
		enforcepkt = cfg & F_ENFORCEPKT;	
		if (active && enforcepkt && (tx_xcnt == 0)) {
			FUNC5(adap, A_TP_PIO_ADDR,
			     	A_TP_TX_DROP_CNT_CH0 + FUNC2(mac));
			tx_tcnt = (FUNC0(FUNC4(adap,
			      	A_TP_PIO_DATA)));
		} else
			goto out;

	} else {
		mac->toggle_cnt = 0;
		goto out;
	}

	if ((tx_tcnt != mac->tx_tcnt) && (mac->tx_xcnt == 0)) {
		if (mac->toggle_cnt > 4) {
			status = 2;
			goto out;
		} else {
			status = 1;
			goto out;
		}
	} else {
		mac->toggle_cnt = 0;
		goto out;
	}

out:
	mac->tx_tcnt = tx_tcnt;
	mac->tx_xcnt = tx_xcnt;
	mac->tx_mcnt = s->tx_frames;
	mac->rx_pause = s->rx_pause;
	if (status == 1) {
		FUNC5(adap, A_XGM_TX_CTRL + mac->offset, 0);
		FUNC4(adap, A_XGM_TX_CTRL + mac->offset);  /* flush */
		FUNC5(adap, A_XGM_TX_CTRL + mac->offset, mac->txen);
		FUNC4(adap, A_XGM_TX_CTRL + mac->offset);  /* flush */
		mac->toggle_cnt++;
	} else if (status == 2) {
		FUNC3(mac, -1);
		mac->toggle_cnt = 0;
	}
	return status;
}