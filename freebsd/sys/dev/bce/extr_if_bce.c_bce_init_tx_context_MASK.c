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
typedef  int u32 ;
struct bce_softc {int /*<<< orphan*/ * tx_bd_chain_paddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_CMD_TYPE ; 
 int BCE_L2CTX_TX_CMD_TYPE_TYPE_L2 ; 
 int BCE_L2CTX_TX_CMD_TYPE_TYPE_L2_XI ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_CMD_TYPE_XI ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_TBDR_BHADDR_HI ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_TBDR_BHADDR_HI_XI ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_TBDR_BHADDR_LO ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_TBDR_BHADDR_LO_XI ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_TYPE ; 
 int BCE_L2CTX_TX_TYPE_SIZE_L2 ; 
 int BCE_L2CTX_TX_TYPE_SIZE_L2_XI ; 
 int BCE_L2CTX_TX_TYPE_TYPE_L2 ; 
 int BCE_L2CTX_TX_TYPE_TYPE_L2_XI ; 
 int /*<<< orphan*/  BCE_L2CTX_TX_TYPE_XI ; 
 int BCE_VERBOSE_CTX ; 
 int BCE_VERBOSE_RESET ; 
 int BCE_VERBOSE_SEND ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TX_CID ; 

__attribute__((used)) static void
FUNC7(struct bce_softc *sc)
{
	u32 val;

	FUNC4(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_CTX);

	/* Initialize the context ID for an L2 TX chain. */
	if (FUNC2(sc) == BCE_CHIP_NUM_5709) {
		/* Set the CID type to support an L2 connection. */
		val = BCE_L2CTX_TX_TYPE_TYPE_L2_XI |
		    BCE_L2CTX_TX_TYPE_SIZE_L2_XI;
		FUNC3(sc, FUNC6(TX_CID), BCE_L2CTX_TX_TYPE_XI, val);
		val = BCE_L2CTX_TX_CMD_TYPE_TYPE_L2_XI | (8 << 16);
		FUNC3(sc, FUNC6(TX_CID),
		    BCE_L2CTX_TX_CMD_TYPE_XI, val);

		/* Point the hardware to the first page in the chain. */
		val = FUNC0(sc->tx_bd_chain_paddr[0]);
		FUNC3(sc, FUNC6(TX_CID),
		    BCE_L2CTX_TX_TBDR_BHADDR_HI_XI, val);
		val = FUNC1(sc->tx_bd_chain_paddr[0]);
		FUNC3(sc, FUNC6(TX_CID),
		    BCE_L2CTX_TX_TBDR_BHADDR_LO_XI, val);
	} else {
		/* Set the CID type to support an L2 connection. */
		val = BCE_L2CTX_TX_TYPE_TYPE_L2 | BCE_L2CTX_TX_TYPE_SIZE_L2;
		FUNC3(sc, FUNC6(TX_CID), BCE_L2CTX_TX_TYPE, val);
		val = BCE_L2CTX_TX_CMD_TYPE_TYPE_L2 | (8 << 16);
		FUNC3(sc, FUNC6(TX_CID), BCE_L2CTX_TX_CMD_TYPE, val);

		/* Point the hardware to the first page in the chain. */
		val = FUNC0(sc->tx_bd_chain_paddr[0]);
		FUNC3(sc, FUNC6(TX_CID),
		    BCE_L2CTX_TX_TBDR_BHADDR_HI, val);
		val = FUNC1(sc->tx_bd_chain_paddr[0]);
		FUNC3(sc, FUNC6(TX_CID),
		    BCE_L2CTX_TX_TBDR_BHADDR_LO, val);
	}

	FUNC5(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_CTX);
}