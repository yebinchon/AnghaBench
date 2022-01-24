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
typedef  int uint8_t ;
struct cuda_softc {int sc_state; int sc_waiting; size_t sc_sent; int* sc_out; int sc_received; size_t sc_out_length; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_inq; int /*<<< orphan*/  sc_freeq; void** sc_in; } ;
struct cuda_packet {int /*<<< orphan*/  len; int /*<<< orphan*/  data; void* type; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
#define  CUDA_IDLE 131 
#define  CUDA_IN 130 
#define  CUDA_NOTREADY 129 
#define  CUDA_OUT 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cuda_packet* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cuda_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct cuda_softc*) ; 
 void* FUNC9 (struct cuda_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct cuda_softc*,int /*<<< orphan*/ ,int) ; 
 struct cuda_softc* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkt_q ; 
 int /*<<< orphan*/  vIFR ; 
 int /*<<< orphan*/  vSR ; 
 int vSR_INT ; 

__attribute__((used)) static void
FUNC20(void *arg)
{
	device_t        dev;
	struct cuda_softc *sc;

	int i, ending, restart_send, process_inbound;
	uint8_t reg;

        dev = (device_t)arg;
	sc = FUNC15(dev);

	FUNC18(&sc->sc_mutex);

	restart_send = 0;
	process_inbound = 0;
	reg = FUNC9(sc, vIFR);
	if ((reg & vSR_INT) != vSR_INT) {
		FUNC19(&sc->sc_mutex);
		return;
	}

	FUNC14(sc, vIFR, 0x7f);	/* Clear interrupt */

switch_start:
	switch (sc->sc_state) {
	case CUDA_IDLE:
		/*
		 * This is an unexpected packet, so grab the first (dummy)
		 * byte, set up the proper vars, and tell the chip we are
		 * starting to receive the packet by setting the TIP bit.
		 */
		sc->sc_in[1] = FUNC9(sc, vSR);

		if (FUNC7(sc) == 0) {
			/* must have been a fake start */

			if (sc->sc_waiting) {
				/* start over */
				FUNC0(150);
				sc->sc_state = CUDA_OUT;
				sc->sc_sent = 0;
				FUNC8(sc);
				FUNC14(sc, vSR, sc->sc_out[1]);
				FUNC4(sc);
				FUNC12(sc);
			}
			break;
		}

		FUNC6(sc);
		FUNC12(sc);

		sc->sc_received = 1;
		sc->sc_state = CUDA_IN;
		break;

	case CUDA_IN:
		sc->sc_in[sc->sc_received] = FUNC9(sc, vSR);
		ending = 0;

		if (sc->sc_received > 255) {
			/* bitch only once */
			if (sc->sc_received == 256) {
				FUNC16(dev,"input overflow\n");
				ending = 1;
			}
		} else
			sc->sc_received++;

		/* intr off means this is the last byte (end of frame) */
		if (FUNC7(sc) == 0) {
			ending = 1;
		} else {
			FUNC13(sc);			
		}
		
		if (ending == 1) {	/* end of message? */
			struct cuda_packet *pkt;

			/* reset vars and signal the end of this frame */
			FUNC5(sc);

			/* Queue up the packet */
			pkt = FUNC1(&sc->sc_freeq);
			if (pkt != NULL) {
				/* If we have a free packet, process it */

				pkt->len = sc->sc_received - 2;
				pkt->type = sc->sc_in[1];
				FUNC17(pkt->data, &sc->sc_in[2], pkt->len);

				FUNC3(&sc->sc_freeq, pkt_q);
				FUNC2(&sc->sc_inq, pkt, pkt_q);

				process_inbound = 1;
			}

			sc->sc_state = CUDA_IDLE;
			sc->sc_received = 0;

			/*
			 * If there is something waiting to be sent out,
			 * set everything up and send the first byte.
			 */
			if (sc->sc_waiting == 1) {
				FUNC0(1500);	/* required */
				sc->sc_sent = 0;
				sc->sc_state = CUDA_OUT;

				/*
				 * If the interrupt is on, we were too slow
				 * and the chip has already started to send
				 * something to us, so back out of the write
				 * and start a read cycle.
				 */
				if (FUNC7(sc)) {
					FUNC6(sc);
					FUNC5(sc);
					sc->sc_sent = 0;
					sc->sc_state = CUDA_IDLE;
					sc->sc_received = 0;
					FUNC0(150);
					goto switch_start;
				}

				/*
				 * If we got here, it's ok to start sending
				 * so load the first byte and tell the chip
				 * we want to send.
				 */
				FUNC8(sc);
				FUNC14(sc, vSR,
				    sc->sc_out[sc->sc_sent]);
				FUNC4(sc);
				FUNC12(sc);
			}
		}
		break;

	case CUDA_OUT:
		i = FUNC9(sc, vSR);	/* reset SR-intr in IFR */

		sc->sc_sent++;
		if (FUNC7(sc)) {	/* ADB intr low during write */
			FUNC6(sc);	/* make sure SR is set to IN */
			FUNC5(sc);
			sc->sc_sent = 0;	/* must start all over */
			sc->sc_state = CUDA_IDLE;	/* new state */
			sc->sc_received = 0;
			sc->sc_waiting = 1;	/* must retry when done with
						 * read */
			FUNC0(150);
			goto switch_start;	/* process next state right
						 * now */
			break;
		}
		if (sc->sc_out_length == sc->sc_sent) {	/* check for done */
			sc->sc_waiting = 0;	/* done writing */
			sc->sc_state = CUDA_IDLE;	/* signal bus is idle */
			FUNC6(sc);
			FUNC5(sc);
		} else {
			/* send next byte */
			FUNC14(sc, vSR, sc->sc_out[sc->sc_sent]);
			FUNC13(sc);	/* signal byte ready to
							 * shift */
		}
		break;

	case CUDA_NOTREADY:
		break;

	default:
		break;
	}

	FUNC19(&sc->sc_mutex);

	if (process_inbound)
		FUNC10(sc);

	FUNC18(&sc->sc_mutex);
	/* If we have another packet waiting, set it up */
	if (!sc->sc_waiting && sc->sc_state == CUDA_IDLE)
		FUNC11(sc);

	FUNC19(&sc->sc_mutex);

}