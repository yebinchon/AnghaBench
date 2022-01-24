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
struct cuda_softc {int sc_autopoll; int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_freeq; int /*<<< orphan*/  sc_rtc; int /*<<< orphan*/  adb_bus; int /*<<< orphan*/  sc_inq; int /*<<< orphan*/  sc_dev; } ;
struct cuda_packet {int type; int len; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  CMD_AUTOPOLL 133 
#define  CMD_READ_RTC 132 
#define  CMD_WRITE_RTC 131 
#define  CUDA_ADB 130 
#define  CUDA_ERROR 129 
#define  CUDA_PSEUDO 128 
 struct cuda_packet* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cuda_packet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pkt_q ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct cuda_softc *sc)
{
	device_t dev;
	struct cuda_packet *pkt;

	dev = sc->sc_dev;
	
	FUNC6(&sc->sc_mutex);

	while ((pkt = FUNC0(&sc->sc_inq)) != NULL) {
		FUNC2(&sc->sc_inq, pkt_q);

		FUNC7(&sc->sc_mutex);

		/* check if we have a handler for this message */
		switch (pkt->type) {
		   case CUDA_ADB:
			if (pkt->len > 2) {
				FUNC3(sc->adb_bus,
				    pkt->data[0],pkt->data[1],
				    pkt->len - 2,&pkt->data[2]);
			} else {
				FUNC3(sc->adb_bus,
				    pkt->data[0],pkt->data[1],0,NULL);
			}
			break;
		   case CUDA_PSEUDO:
			FUNC6(&sc->sc_mutex);
			switch (pkt->data[1]) {
			case CMD_AUTOPOLL:
				sc->sc_autopoll = 1;
				break;
			case CMD_READ_RTC:
				FUNC5(&sc->sc_rtc, &pkt->data[2],
				    sizeof(sc->sc_rtc));
				FUNC8(&sc->sc_rtc);
				break;
			case CMD_WRITE_RTC:
				break;
			}
			FUNC7(&sc->sc_mutex);
			break;
		   case CUDA_ERROR:
			/*
			 * CUDA will throw errors if we miss a race between
			 * sending and receiving packets. This is already
			 * handled when we abort packet output to handle
			 * this packet in cuda_intr(). Thus, we ignore
			 * these messages.
			 */
			break;
		   default:
			FUNC4(dev,"unknown CUDA command %d\n",
			    pkt->type);
			break;
		}

		FUNC6(&sc->sc_mutex);

		FUNC1(&sc->sc_freeq, pkt, pkt_q);
	}

	FUNC7(&sc->sc_mutex);
}