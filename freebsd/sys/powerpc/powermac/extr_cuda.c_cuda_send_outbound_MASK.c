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
struct cuda_softc {int sc_waiting; scalar_t__ sc_state; int /*<<< orphan*/ * sc_out; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_freeq; int /*<<< orphan*/  sc_outq; scalar_t__ sc_sent; scalar_t__ sc_out_length; int /*<<< orphan*/  sc_mutex; } ;
struct cuda_packet {scalar_t__ len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ CUDA_IDLE ; 
 scalar_t__ CUDA_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 struct cuda_packet* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cuda_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct cuda_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pkt_q ; 
 int /*<<< orphan*/  vSR ; 

__attribute__((used)) static void
FUNC12(struct cuda_softc *sc)
{
	struct cuda_packet *pkt;

	FUNC11(&sc->sc_mutex, MA_OWNED);

	pkt = FUNC1(&sc->sc_outq);
	if (pkt == NULL)
		return;

	sc->sc_out_length = pkt->len + 1;
	FUNC10(sc->sc_out, &pkt->type, pkt->len + 1);
	sc->sc_sent = 0;

	FUNC3(&sc->sc_outq, pkt_q);
	FUNC2(&sc->sc_freeq, pkt, pkt_q);

	sc->sc_waiting = 1;

	FUNC7(sc->sc_dev);

	FUNC0(150);

	if (sc->sc_state == CUDA_IDLE && !FUNC5(sc)) {
		sc->sc_state = CUDA_OUT;
		FUNC6(sc);
		FUNC9(sc, vSR, sc->sc_out[0]);
		FUNC4(sc);
		FUNC8(sc);
	}
}