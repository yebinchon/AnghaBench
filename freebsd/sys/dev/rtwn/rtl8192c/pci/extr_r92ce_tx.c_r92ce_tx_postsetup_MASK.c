#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rtwn_pci_softc {int /*<<< orphan*/  pc_mapsize; int /*<<< orphan*/  pc_sh; int /*<<< orphan*/  pc_st; } ;
struct r92ce_tx_desc {int /*<<< orphan*/  pktlen; int /*<<< orphan*/  txbufsize; int /*<<< orphan*/  txbufaddr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(struct rtwn_pci_softc *pc, void *desc,
    bus_dma_segment_t segs[])
{
	struct r92ce_tx_desc *txd = desc;

	txd->txbufaddr = FUNC1(segs[0].ds_addr);
	txd->txbufsize = txd->pktlen;
	FUNC0(pc->pc_st, pc->pc_sh, 0, pc->pc_mapsize,
	    BUS_SPACE_BARRIER_WRITE);
}