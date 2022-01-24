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
typedef  int /*<<< orphan*/  uint8_t ;
struct cuda_softc {scalar_t__ sc_state; scalar_t__ sc_polling; int /*<<< orphan*/  sc_mutex; scalar_t__ sc_waiting; int /*<<< orphan*/  sc_outq; int /*<<< orphan*/  sc_freeq; int /*<<< orphan*/  sc_dev; } ;
struct cuda_packet {int len; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CUDA_NOTREADY ; 
 struct cuda_packet* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cuda_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ cold ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cuda_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkt_q ; 

__attribute__((used)) static int
FUNC8(void *cookie, int poll, int length, uint8_t *msg)
{
	struct cuda_softc *sc = cookie;
	device_t dev = sc->sc_dev;
	struct cuda_packet *pkt;

	if (sc->sc_state == CUDA_NOTREADY)
		return (-1);

	FUNC6(&sc->sc_mutex);

	pkt = FUNC0(&sc->sc_freeq);
	if (pkt == NULL) {
		FUNC7(&sc->sc_mutex);
		return (-1);
	}

	pkt->len = length - 1;
	pkt->type = msg[0];
	FUNC5(pkt->data, &msg[1], pkt->len);

	FUNC2(&sc->sc_freeq, pkt_q);
	FUNC1(&sc->sc_outq, pkt, pkt_q);

	/*
	 * If we already are sending a packet, we should bail now that this
	 * one has been added to the queue.
	 */

	if (sc->sc_waiting) {
		FUNC7(&sc->sc_mutex);
		return (0);
	}

	FUNC4(sc);
	FUNC7(&sc->sc_mutex);

	if (sc->sc_polling || poll || cold)
		FUNC3(dev);

	return (0);
}