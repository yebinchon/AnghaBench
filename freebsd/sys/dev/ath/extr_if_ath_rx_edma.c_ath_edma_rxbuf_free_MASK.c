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
struct ath_softc {int /*<<< orphan*/  sc_rxbuf; int /*<<< orphan*/  sc_dmat; } ;
struct ath_buf {int /*<<< orphan*/ * bf_m; int /*<<< orphan*/  bf_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ath_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bf_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ath_softc *sc, struct ath_buf *bf)
{

	FUNC0(sc);

	/*
	 * Only unload the frame if we haven't consumed
	 * the mbuf via ath_rx_pkt().
	 */
	if (bf->bf_m) {
		FUNC2(sc->sc_dmat, bf->bf_dmamap);
		FUNC3(bf->bf_m);
		bf->bf_m = NULL;
	}

	/* XXX lock? */
	FUNC1(&sc->sc_rxbuf, bf, bf_list);
}