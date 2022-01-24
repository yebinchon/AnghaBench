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
struct rtwn_softc {int dummy; } ;
struct r92c_tx_desc {int flags0; int /*<<< orphan*/  txdw5; int /*<<< orphan*/  txdw4; int /*<<< orphan*/  txdw1; } ;

/* Variables and functions */
 int R92C_FLAGS0_BMCAST ; 
 int R92C_FLAGS0_FSG ; 
 int R92C_FLAGS0_LSG ; 
 int R92C_RAID_11B ; 
 int /*<<< orphan*/  R92C_TXDW1_QSEL ; 
 int R92C_TXDW1_QSEL_BEACON ; 
 int /*<<< orphan*/  R92C_TXDW1_RAID ; 
 int R92C_TXDW4_DRVRATE ; 
 int /*<<< orphan*/  R92C_TXDW4_PORT_ID ; 
 int /*<<< orphan*/  R92C_TXDW4_SEQ_SEL ; 
 int /*<<< orphan*/  R92C_TXDW5_DATARATE ; 
 int RTWN_RIDX_CCK1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,void*,int) ; 

void
FUNC3(struct rtwn_softc *sc, void *buf, int id)
{
	struct r92c_tx_desc *txd = (struct r92c_tx_desc *)buf;

	/*
	 * NB: there is no need to setup HWSEQ_EN bit;
	 * QSEL_BEACON already implies it.
	 */
	txd->flags0 |= R92C_FLAGS0_BMCAST | R92C_FLAGS0_FSG | R92C_FLAGS0_LSG;
	txd->txdw1 |= FUNC1(
	    FUNC0(R92C_TXDW1_QSEL, R92C_TXDW1_QSEL_BEACON) |
	    FUNC0(R92C_TXDW1_RAID, R92C_RAID_11B));

	FUNC2(sc, buf, id);
	txd->txdw4 |= FUNC1(R92C_TXDW4_DRVRATE);
	txd->txdw4 |= FUNC1(FUNC0(R92C_TXDW4_SEQ_SEL, id));
	txd->txdw4 |= FUNC1(FUNC0(R92C_TXDW4_PORT_ID, id));
	txd->txdw5 |= FUNC1(FUNC0(R92C_TXDW5_DATARATE, RTWN_RIDX_CCK1));
}