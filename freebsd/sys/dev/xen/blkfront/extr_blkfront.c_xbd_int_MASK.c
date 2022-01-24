#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rsp_cons; scalar_t__ req_prod_pvt; TYPE_1__* sring; } ;
struct xbd_softc {scalar_t__ xbd_state; int /*<<< orphan*/  xbd_io_lock; int /*<<< orphan*/ * xbd_cm_q; TYPE_4__ xbd_ring; int /*<<< orphan*/  xbd_io_dmat; struct xbd_command* xbd_shadow; } ;
struct xbd_command {scalar_t__ cm_operation; int /*<<< orphan*/  (* cm_complete ) (struct xbd_command*) ;scalar_t__ cm_bp; int /*<<< orphan*/  cm_status; int /*<<< orphan*/  cm_map; int /*<<< orphan*/  cm_sg_refs; int /*<<< orphan*/  cm_nseg; } ;
struct TYPE_7__ {size_t id; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ blkif_response_t ;
struct TYPE_6__ {scalar_t__ rsp_prod; scalar_t__ rsp_event; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 scalar_t__ BLKIF_OP_READ ; 
 scalar_t__ BLKIF_OP_WRITE ; 
 scalar_t__ BLKIF_OP_WRITE_BARRIER ; 
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int) ; 
 TYPE_2__* FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  XBDF_WAIT_IDLE ; 
 size_t XBD_Q_BUSY ; 
 scalar_t__ XBD_STATE_DISCONNECTED ; 
 scalar_t__ XBD_STATE_SUSPENDED ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct xbd_command*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xbd_softc*,struct xbd_command*) ; 
 int /*<<< orphan*/  FUNC12 (struct xbd_softc*,struct xbd_command*) ; 
 int /*<<< orphan*/  FUNC13 (struct xbd_command*) ; 
 scalar_t__ FUNC14 (struct xbd_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct xbd_command*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (struct xbd_softc*) ; 
 int /*<<< orphan*/  FUNC17 (struct xbd_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(void *xsc)
{
	struct xbd_softc *sc = xsc;
	struct xbd_command *cm;
	blkif_response_t *bret;
	RING_IDX i, rp;
	int op;

	FUNC6(&sc->xbd_io_lock);

	if (FUNC2(sc->xbd_state == XBD_STATE_DISCONNECTED)) {
		FUNC7(&sc->xbd_io_lock);
		return;
	}

 again:
	rp = sc->xbd_ring.sring->rsp_prod;
	FUNC8(); /* Ensure we see queued responses up to 'rp'. */

	for (i = sc->xbd_ring.rsp_cons; i != rp;) {
		bret = FUNC1(&sc->xbd_ring, i);
		cm   = &sc->xbd_shadow[bret->id];

		FUNC15(cm, XBD_Q_BUSY);
		FUNC5(cm->cm_nseg,
		    cm->cm_sg_refs);
		i++;

		if (cm->cm_operation == BLKIF_OP_READ)
			op = BUS_DMASYNC_POSTREAD;
		else if (cm->cm_operation == BLKIF_OP_WRITE ||
		    cm->cm_operation == BLKIF_OP_WRITE_BARRIER)
			op = BUS_DMASYNC_POSTWRITE;
		else
			op = 0;
		FUNC3(sc->xbd_io_dmat, cm->cm_map, op);
		FUNC4(sc->xbd_io_dmat, cm->cm_map);

		/*
		 * Release any hold this command has on future command
		 * dispatch. 
		 */
		FUNC12(sc, cm);

		/*
		 * Directly call the i/o complete routine to save an
		 * an indirection in the common case.
		 */
		cm->cm_status = bret->status;
		if (cm->cm_bp)
			FUNC11(sc, cm);
		else if (cm->cm_complete != NULL)
			cm->cm_complete(cm);
		else
			FUNC13(cm);
	}

	sc->xbd_ring.rsp_cons = i;

	if (i != sc->xbd_ring.req_prod_pvt) {
		int more_to_do;
		FUNC0(&sc->xbd_ring, more_to_do);
		if (more_to_do)
			goto again;
	} else {
		sc->xbd_ring.sring->rsp_event = i + 1;
	}

	if (FUNC14(sc, XBD_Q_BUSY) == 0)
		FUNC17(sc, XBDF_WAIT_IDLE);

	FUNC16(sc);

	if (FUNC2(sc->xbd_state == XBD_STATE_SUSPENDED))
		FUNC10(&sc->xbd_cm_q[XBD_Q_BUSY]);

	FUNC7(&sc->xbd_io_lock);
}