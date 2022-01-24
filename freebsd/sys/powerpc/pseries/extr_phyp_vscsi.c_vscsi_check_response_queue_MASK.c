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
struct vscsi_xfer {int /*<<< orphan*/  srp_iu_size; int /*<<< orphan*/  srp_iu_offset; } ;
struct vscsi_softc {size_t cur_crq; int bus_initialized; int n_crqs; int /*<<< orphan*/  unit; int /*<<< orphan*/  crq_map; int /*<<< orphan*/  crq_tag; int /*<<< orphan*/  dev; int /*<<< orphan*/  free_xferq; int /*<<< orphan*/  active_xferq; int /*<<< orphan*/  srp_iu_arena; scalar_t__ srp_iu_queue; struct vscsi_crq* crq_queue; int /*<<< orphan*/  io_lock; } ;
struct vscsi_crq {scalar_t__ valid; int format; scalar_t__ iu_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  H_VIO_SIGNAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
#define  SRP_LOGIN_RSP 129 
#define  SRP_RSP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  queue ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vscsi_xfer*,struct vscsi_crq*) ; 
 int /*<<< orphan*/  FUNC9 (struct vscsi_xfer*,struct vscsi_crq*) ; 

__attribute__((used)) static void
FUNC10(struct vscsi_softc *sc)
{
	struct vscsi_crq *crq;
	struct vscsi_xfer *xp;
	int code;

	FUNC4(&sc->io_lock, MA_OWNED);

	while (sc->crq_queue[sc->cur_crq].valid != 0) {
		/* The hypercalls at both ends of this are not optimal */
		FUNC6(H_VIO_SIGNAL, sc->unit, 0);
		FUNC2(sc->crq_tag, sc->crq_map, BUS_DMASYNC_POSTREAD);

		crq = &sc->crq_queue[sc->cur_crq];

		switch (crq->valid) {
		case 0xc0:
			if (crq->format == 0x02)
				sc->bus_initialized = 1;
			break;
		case 0x80:
			/* IU data is set to tag pointer (the XP) */
			xp = (struct vscsi_xfer *)crq->iu_data;

			switch (crq->format) {
			case 0x01:
				code = *((uint8_t *)sc->srp_iu_queue +
	    			    (uintptr_t)xp->srp_iu_offset);
				switch (code) {
				case SRP_RSP:
					FUNC9(xp, crq);
					break;
				case SRP_LOGIN_RSP:
					FUNC8(xp, crq);
					break;
				default:
					FUNC3(sc->dev, "Unknown SRP "
					    "response code %d\n", code);
					break;
				}
				break;
			case 0x02:
				/* Ignore management datagrams */
				break;
			default:
				FUNC5("Unknown CRQ format %d\n", crq->format);
				break;
			}
			FUNC7(sc->srp_iu_arena, xp->srp_iu_offset,
			    xp->srp_iu_size);
			FUNC1(&sc->active_xferq, xp, queue);
			FUNC0(&sc->free_xferq, xp, queue);
			break;
		default:
			FUNC3(sc->dev,
			    "Unknown CRQ message type %d\n", crq->valid);
			break;
		}

		crq->valid = 0;
		sc->cur_crq = (sc->cur_crq + 1) % sc->n_crqs;

		FUNC2(sc->crq_tag, sc->crq_map, BUS_DMASYNC_PREWRITE);
		FUNC6(H_VIO_SIGNAL, sc->unit, 1);
	}
}