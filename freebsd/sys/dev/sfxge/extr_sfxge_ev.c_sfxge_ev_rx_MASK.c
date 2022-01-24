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
typedef  int uint32_t ;
typedef  void* uint16_t ;
struct sfxge_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  enp; } ;
struct sfxge_rxq {scalar_t__ init_state; int ptr_mask; int pending; int entries; scalar_t__ completed; struct sfxge_rx_sw_desc* queue; } ;
struct sfxge_rx_sw_desc {scalar_t__ flags; void* size; int /*<<< orphan*/  mbuf; } ;
struct sfxge_evq {scalar_t__ rx_done; scalar_t__ exception; struct sfxge_softc* sc; } ;
typedef  int boolean_t ;
struct TYPE_2__ {unsigned int enc_rx_batch_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ B_TRUE ; 
 scalar_t__ EFX_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfxge_evq*) ; 
 scalar_t__ SFXGE_EV_BATCH ; 
 scalar_t__ SFXGE_RXQ_STARTED ; 
 scalar_t__ SFXGE_RX_BATCH ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned int,void*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sfxge_evq*,int /*<<< orphan*/ ) ; 
 struct sfxge_rxq* FUNC7 (struct sfxge_evq*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sfxge_softc*) ; 

__attribute__((used)) static boolean_t
FUNC9(void *arg, uint32_t label, uint32_t id, uint32_t size,
	    uint16_t flags)
{
	struct sfxge_evq *evq;
	struct sfxge_softc *sc;
	struct sfxge_rxq *rxq;
	unsigned int stop;
	unsigned int delta;
	struct sfxge_rx_sw_desc *rx_desc;

	evq = arg;
	FUNC1(evq);

	sc = evq->sc;

	if (evq->exception)
		goto done;

	rxq = FUNC7(evq, label);
	if (FUNC2(rxq->init_state != SFXGE_RXQ_STARTED))
		goto done;

	stop = (id + 1) & rxq->ptr_mask;
	id = rxq->pending & rxq->ptr_mask;
	delta = (stop >= id) ? (stop - id) : (rxq->entries - id + stop);
	rxq->pending += delta;

	if (delta != 1) {
		if ((delta <= 0) ||
		    (delta > FUNC4(sc->enp)->enc_rx_batch_max)) {
			evq->exception = B_TRUE;

			FUNC3(sc->dev, "RX completion out of order"
						  " (id=%#x delta=%u flags=%#x); resetting\n",
						  id, delta, flags);
			FUNC8(sc);

			goto done;
		}
	}

	rx_desc = &rxq->queue[id];

	FUNC5(rx_desc->mbuf);

	for (; id != stop; id = (id + 1) & rxq->ptr_mask) {
		rx_desc = &rxq->queue[id];
		FUNC0(rx_desc->flags == EFX_DISCARD,
				("rx_desc->flags != EFX_DISCARD"));
		rx_desc->flags = flags;

		FUNC0(size < (1 << 16), ("size > (1 << 16)"));
		rx_desc->size = (uint16_t)size;
	}

	evq->rx_done++;

	if (rxq->pending - rxq->completed >= SFXGE_RX_BATCH)
		FUNC6(evq, B_FALSE);

done:
	return (evq->rx_done >= SFXGE_EV_BATCH);
}