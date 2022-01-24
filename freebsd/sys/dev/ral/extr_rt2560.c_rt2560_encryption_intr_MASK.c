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
struct rt2560_tx_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  eiv; } ;
struct TYPE_2__ {int physaddr; int next_encrypt; int cur_encrypt; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_dmat; struct rt2560_tx_desc* desc; } ;
struct rt2560_softc {TYPE_1__ txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,int,char*,size_t) ; 
 int FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2560_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2560_KICK_TX ; 
 int /*<<< orphan*/  RT2560_SECCSR1 ; 
 int /*<<< orphan*/  RT2560_TXCSR0 ; 
 int RT2560_TX_BUSY ; 
 int RT2560_TX_CIPHER_BUSY ; 
 int RT2560_TX_CIPHER_MASK ; 
 int RT2560_TX_CIPHER_TKIP ; 
 int RT2560_TX_DESC_SIZE ; 
 int RT2560_TX_RING_COUNT ; 
 int RT2560_TX_VALID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct rt2560_softc *sc)
{
	struct rt2560_tx_desc *desc;
	int hw;

	/* retrieve last descriptor index processed by cipher engine */
	hw = FUNC1(sc, RT2560_SECCSR1) - sc->txq.physaddr;
	hw /= RT2560_TX_DESC_SIZE;

	FUNC4(sc->txq.desc_dmat, sc->txq.desc_map,
	    BUS_DMASYNC_POSTREAD);

	while (sc->txq.next_encrypt != hw) {
		if (sc->txq.next_encrypt == sc->txq.cur_encrypt) {
			FUNC7("hw encrypt %d, cur_encrypt %d\n", hw,
			    sc->txq.cur_encrypt);
			break;
		}

		desc = &sc->txq.desc[sc->txq.next_encrypt];

		if ((FUNC6(desc->flags) & RT2560_TX_BUSY) ||
		    (FUNC6(desc->flags) & RT2560_TX_CIPHER_BUSY))
			break;

		/* for TKIP, swap eiv field to fix a bug in ASIC */
		if ((FUNC6(desc->flags) & RT2560_TX_CIPHER_MASK) ==
		    RT2560_TX_CIPHER_TKIP)
			desc->eiv = FUNC3(desc->eiv);

		/* mark the frame ready for transmission */
		desc->flags |= FUNC5(RT2560_TX_VALID);
		desc->flags |= FUNC5(RT2560_TX_BUSY);

		FUNC0(sc, 15, "encryption done idx=%u\n",
		    sc->txq.next_encrypt);

		sc->txq.next_encrypt =
		    (sc->txq.next_encrypt + 1) % RT2560_TX_RING_COUNT;
	}

	FUNC4(sc->txq.desc_dmat, sc->txq.desc_map,
	    BUS_DMASYNC_PREWRITE);

	/* kick Tx */
	FUNC2(sc, RT2560_TXCSR0, RT2560_KICK_TX);
}