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
struct rx_bd {void* rx_bd_haddr_lo; void* rx_bd_haddr_hi; } ;
struct bce_softc {int pg_pages; int rx_bd_mbuf_data_len; int /*<<< orphan*/ * pg_bd_chain_map; int /*<<< orphan*/  pg_bd_chain_tag; int /*<<< orphan*/ * pg_bd_chain_paddr; struct rx_bd** pg_bd_chain; void* pg_empty_count; void* max_pg_bd; void* pg_low_watermark; void* free_pg_bd; scalar_t__ pg_cons; scalar_t__ pg_prod; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 int /*<<< orphan*/  BCE_EXTREME_RECV ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_NX_PG_BDHADDR_HI ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_NX_PG_BDHADDR_LO ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_PG_BUF_SIZE ; 
 int BCE_L2CTX_RX_RBDC_JUMBO_KEY ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_RBDC_KEY ; 
 int /*<<< orphan*/  BCE_MQ_MAP_L2_3 ; 
 int /*<<< orphan*/  BCE_MQ_MAP_L2_3_DEFAULT ; 
 int BCE_VERBOSE_CTX ; 
 int BCE_VERBOSE_LOAD ; 
 int BCE_VERBOSE_RECV ; 
 int BCE_VERBOSE_RESET ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  FUNC9 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_CID ; 
 int /*<<< orphan*/  TOTAL_PG_BD_ALLOC ; 
 void* USABLE_PG_BD_ALLOC ; 
 size_t USABLE_PG_BD_PER_PAGE ; 
 int /*<<< orphan*/  FUNC10 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(struct bce_softc *sc)
{
	struct rx_bd *pgbd;
	int i, rc = 0;
	u32 val;

	FUNC4(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
		BCE_VERBOSE_CTX);

	/* Initialize the page producer and consumer indices. */
	sc->pg_prod        = 0;
	sc->pg_cons        = 0;
	sc->free_pg_bd     = USABLE_PG_BD_ALLOC;
	sc->max_pg_bd      = USABLE_PG_BD_ALLOC;
	FUNC6(sc->pg_low_watermark = sc->max_pg_bd);
	FUNC6(sc->pg_empty_count = 0);

	/* Initialize the page next pointer chain entries. */
	for (i = 0; i < sc->pg_pages; i++) {
		int j;

		pgbd = &sc->pg_bd_chain[i][USABLE_PG_BD_PER_PAGE];

		/* Check if we've reached the last page. */
		if (i == (sc->pg_pages - 1))
			j = 0;
		else
			j = i + 1;

		/* Setup the chain page pointers. */
		pgbd->rx_bd_haddr_hi =
		    FUNC13(FUNC0(sc->pg_bd_chain_paddr[j]));
		pgbd->rx_bd_haddr_lo =
		    FUNC13(FUNC1(sc->pg_bd_chain_paddr[j]));
	}

	/* Setup the MQ BIN mapping for host_pg_bidx. */
	if (FUNC2(sc) == BCE_CHIP_NUM_5709)
		FUNC9(sc, BCE_MQ_MAP_L2_3, BCE_MQ_MAP_L2_3_DEFAULT);

	FUNC3(sc, FUNC8(RX_CID), BCE_L2CTX_RX_PG_BUF_SIZE, 0);

	/* Configure the rx_bd and page chain mbuf cluster size. */
	val = (sc->rx_bd_mbuf_data_len << 16) | MCLBYTES;
	FUNC3(sc, FUNC8(RX_CID), BCE_L2CTX_RX_PG_BUF_SIZE, val);

	/* Configure the context reserved for jumbo support. */
	FUNC3(sc, FUNC8(RX_CID), BCE_L2CTX_RX_RBDC_KEY,
		BCE_L2CTX_RX_RBDC_JUMBO_KEY);

	/* Point the hardware to the first page in the page chain. */
	val = FUNC0(sc->pg_bd_chain_paddr[0]);
	FUNC3(sc, FUNC8(RX_CID), BCE_L2CTX_RX_NX_PG_BDHADDR_HI, val);
	val = FUNC1(sc->pg_bd_chain_paddr[0]);
	FUNC3(sc, FUNC8(RX_CID), BCE_L2CTX_RX_NX_PG_BDHADDR_LO, val);

	/* Fill up the page chain. */
	FUNC11(sc);

	for (i = 0; i < sc->pg_pages; i++) {
		FUNC12(sc->pg_bd_chain_tag, sc->pg_bd_chain_map[i],
		    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	}

	FUNC7(BCE_EXTREME_RECV,
	    FUNC10(sc, 0, TOTAL_PG_BD_ALLOC));
	FUNC5(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_LOAD |
		BCE_VERBOSE_CTX);
	return(rc);
}