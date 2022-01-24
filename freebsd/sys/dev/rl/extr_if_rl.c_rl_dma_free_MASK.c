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
struct TYPE_2__ {scalar_t__ rl_rx_buf_paddr; int /*<<< orphan*/ * rl_tx_tag; int /*<<< orphan*/ ** rl_tx_dmamap; int /*<<< orphan*/ * rl_rx_tag; int /*<<< orphan*/ * rl_rx_buf; int /*<<< orphan*/ * rl_rx_buf_ptr; int /*<<< orphan*/  rl_rx_dmamap; } ;
struct rl_softc {int /*<<< orphan*/ * rl_parent_tag; TYPE_1__ rl_cdata; } ;

/* Variables and functions */
 int RL_TX_LIST_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct rl_softc *sc)
{
	int			i;

	/* Rx memory block. */
	if (sc->rl_cdata.rl_rx_tag != NULL) {
		if (sc->rl_cdata.rl_rx_buf_paddr != 0)
			FUNC2(sc->rl_cdata.rl_rx_tag,
			    sc->rl_cdata.rl_rx_dmamap);
		if (sc->rl_cdata.rl_rx_buf_ptr != NULL)
			FUNC3(sc->rl_cdata.rl_rx_tag,
			    sc->rl_cdata.rl_rx_buf_ptr,
			    sc->rl_cdata.rl_rx_dmamap);
		sc->rl_cdata.rl_rx_buf_ptr = NULL;
		sc->rl_cdata.rl_rx_buf = NULL;
		sc->rl_cdata.rl_rx_buf_paddr = 0;
		FUNC0(sc->rl_cdata.rl_rx_tag);
		sc->rl_cdata.rl_tx_tag = NULL;
	}

	/* Tx buffers. */
	if (sc->rl_cdata.rl_tx_tag != NULL) {
		for (i = 0; i < RL_TX_LIST_CNT; i++) {
			if (sc->rl_cdata.rl_tx_dmamap[i] != NULL) {
				FUNC1(
				    sc->rl_cdata.rl_tx_tag,
				    sc->rl_cdata.rl_tx_dmamap[i]);
				sc->rl_cdata.rl_tx_dmamap[i] = NULL;
			}
		}
		FUNC0(sc->rl_cdata.rl_tx_tag);
		sc->rl_cdata.rl_tx_tag = NULL;
	}

	if (sc->rl_parent_tag != NULL) {
		FUNC0(sc->rl_parent_tag);
		sc->rl_parent_tag = NULL;
	}
}