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
struct tx_bd {void* tx_bd_haddr_lo; void* tx_bd_haddr_hi; } ;
struct bce_softc {int tx_pages; int /*<<< orphan*/ * tx_bd_chain_paddr; struct tx_bd** tx_bd_chain; scalar_t__ tx_full_count; scalar_t__ tx_hi_watermark; int /*<<< orphan*/  max_tx_bd; scalar_t__ used_tx_bd; scalar_t__ tx_prod_bseq; scalar_t__ tx_cons; scalar_t__ tx_prod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCE_INSANE_SEND ; 
 int BCE_VERBOSE_LOAD ; 
 int BCE_VERBOSE_RESET ; 
 int BCE_VERBOSE_SEND ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOTAL_TX_BD_ALLOC ; 
 int /*<<< orphan*/  USABLE_TX_BD_ALLOC ; 
 size_t USABLE_TX_BD_PER_PAGE ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bce_softc*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct bce_softc *sc)
{
	struct tx_bd *txbd;
	int i, rc = 0;

	FUNC2(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_LOAD);

	/* Set the initial TX producer/consumer indices. */
	sc->tx_prod        = 0;
	sc->tx_cons        = 0;
	sc->tx_prod_bseq   = 0;
	sc->used_tx_bd     = 0;
	sc->max_tx_bd      = USABLE_TX_BD_ALLOC;
	FUNC4(sc->tx_hi_watermark = 0);
	FUNC4(sc->tx_full_count = 0);

	/*
	 * The NetXtreme II supports a linked-list structre called
	 * a Buffer Descriptor Chain (or BD chain).  A BD chain
	 * consists of a series of 1 or more chain pages, each of which
	 * consists of a fixed number of BD entries.
	 * The last BD entry on each page is a pointer to the next page
	 * in the chain, and the last pointer in the BD chain
	 * points back to the beginning of the chain.
	 */

	/* Set the TX next pointer chain entries. */
	for (i = 0; i < sc->tx_pages; i++) {
		int j;

		txbd = &sc->tx_bd_chain[i][USABLE_TX_BD_PER_PAGE];

		/* Check if we've reached the last page. */
		if (i == (sc->tx_pages - 1))
			j = 0;
		else
			j = i + 1;

		txbd->tx_bd_haddr_hi =
		    FUNC8(FUNC0(sc->tx_bd_chain_paddr[j]));
		txbd->tx_bd_haddr_lo =
		    FUNC8(FUNC1(sc->tx_bd_chain_paddr[j]));
	}

	FUNC7(sc);

	FUNC5(BCE_INSANE_SEND, FUNC6(sc, 0, TOTAL_TX_BD_ALLOC));
	FUNC3(BCE_VERBOSE_RESET | BCE_VERBOSE_SEND | BCE_VERBOSE_LOAD);

	return(rc);
}