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
struct hn_txdesc {int flags; int /*<<< orphan*/  data_dmap; int /*<<< orphan*/  rndis_pkt_dmap; int /*<<< orphan*/  rndis_pkt; int /*<<< orphan*/ * m; struct hn_tx_ring* txr; } ;
struct hn_tx_ring {int /*<<< orphan*/  hn_tx_data_dtag; int /*<<< orphan*/  hn_tx_rndis_dtag; } ;

/* Variables and functions */
 int HN_TXD_FLAG_DMAMAP ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct hn_txdesc *txd)
{
	struct hn_tx_ring *txr = txd->txr;

	FUNC0(txd->m == NULL, ("still has mbuf installed"));
	FUNC0((txd->flags & HN_TXD_FLAG_DMAMAP) == 0, ("still dma mapped"));

	FUNC2(txr->hn_tx_rndis_dtag, txd->rndis_pkt_dmap);
	FUNC3(txr->hn_tx_rndis_dtag, txd->rndis_pkt,
	    txd->rndis_pkt_dmap);
	FUNC1(txr->hn_tx_data_dtag, txd->data_dmap);
}