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
struct rx_bd {void* rx_bd_haddr_lo; void* rx_bd_haddr_hi; } ;
struct bce_softc {int rx_pages; int /*<<< orphan*/ * rx_bd_chain_map; int /*<<< orphan*/  rx_bd_chain_tag; void* rx_empty_count; void* rx_low_watermark; int /*<<< orphan*/ * rx_bd_chain_paddr; struct rx_bd** rx_bd_chain; void* max_rx_bd; void* free_rx_bd; scalar_t__ rx_prod_bseq; scalar_t__ rx_cons; scalar_t__ rx_prod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCE_EXTREME_RECV ; 
 int BCE_VERBOSE_CTX ; 
 int BCE_VERBOSE_LOAD ; 
 int BCE_VERBOSE_RECV ; 
 int BCE_VERBOSE_RESET ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOTAL_RX_BD_ALLOC ; 
 void* USABLE_RX_BD_ALLOC ; 
 size_t USABLE_RX_BD_PER_PAGE ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct bce_softc *sc)
{
	struct rx_bd *rxbd;
	int i, rc = 0;

	FUNC2(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
	    BCE_VERBOSE_CTX);

	/* Initialize the RX producer and consumer indices. */
	sc->rx_prod        = 0;
	sc->rx_cons        = 0;
	sc->rx_prod_bseq   = 0;
	sc->free_rx_bd     = USABLE_RX_BD_ALLOC;
	sc->max_rx_bd      = USABLE_RX_BD_ALLOC;

	/* Initialize the RX next pointer chain entries. */
	for (i = 0; i < sc->rx_pages; i++) {
		int j;

		rxbd = &sc->rx_bd_chain[i][USABLE_RX_BD_PER_PAGE];

		/* Check if we've reached the last page. */
		if (i == (sc->rx_pages - 1))
			j = 0;
		else
			j = i + 1;

		/* Setup the chain page pointers. */
		rxbd->rx_bd_haddr_hi =
		    FUNC10(FUNC0(sc->rx_bd_chain_paddr[j]));
		rxbd->rx_bd_haddr_lo =
		    FUNC10(FUNC1(sc->rx_bd_chain_paddr[j]));
	}

	/* Fill up the RX chain. */
	FUNC7(sc);

	FUNC4(sc->rx_low_watermark = USABLE_RX_BD_ALLOC);
	FUNC4(sc->rx_empty_count = 0);
	for (i = 0; i < sc->rx_pages; i++) {
		FUNC9(sc->rx_bd_chain_tag, sc->rx_bd_chain_map[i],
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}

	FUNC8(sc);

	FUNC5(BCE_EXTREME_RECV,
	    FUNC6(sc, 0, TOTAL_RX_BD_ALLOC));
	FUNC3(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
	    BCE_VERBOSE_CTX);

	/* ToDo: Are there possible failure modes here? */

	return(rc);
}