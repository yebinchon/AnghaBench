#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int func_code; int /*<<< orphan*/  target_lun; } ;
union ccb {TYPE_1__ ccb_h; } ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct vscsi_xfer {int srp_iu_size; TYPE_2__* sc; scalar_t__ srp_iu_offset; union ccb* ccb; } ;
struct vscsi_softc {int /*<<< orphan*/  active_xferq; int /*<<< orphan*/  free_xferq; int /*<<< orphan*/  io_lock; } ;
struct vscsi_crq {int iu_length; int valid; int format; scalar_t__ iu_data; } ;
struct srp_tsk_mgmt {int function; int /*<<< orphan*/  lun; scalar_t__ tag; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  unit; scalar_t__ srp_iu_phys; int /*<<< orphan*/  crq_map; int /*<<< orphan*/  crq_tag; scalar_t__ srp_iu_queue; int /*<<< orphan*/  srp_iu_arena; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  H_SEND_CRQ ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int M_BESTFIT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  SRP_TSK_MGMT ; 
 struct vscsi_xfer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
#define  XPT_RESET_DEV 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct srp_tsk_mgmt*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  queue ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 

__attribute__((used)) static void
FUNC11(struct vscsi_softc *sc, union ccb *ccb)
{
	struct srp_tsk_mgmt *cmd;
	struct vscsi_xfer *xp;
	struct vscsi_crq crq;
	int err;

	FUNC7(&sc->io_lock, MA_OWNED);

	xp = FUNC1(&sc->free_xferq);
	if (xp == NULL)
		FUNC8("SCSI queue flooded");
	xp->ccb = ccb;
	FUNC3(&sc->free_xferq, xp, queue);
	FUNC2(&sc->active_xferq, xp, queue);

	xp->srp_iu_size = crq.iu_length = sizeof(*cmd);
	err = FUNC10(xp->sc->srp_iu_arena, xp->srp_iu_size,
	    M_BESTFIT | M_NOWAIT, &xp->srp_iu_offset);
	if (err)
		FUNC8("Error during VMEM allocation (%d)", err);

	cmd = (struct srp_tsk_mgmt *)((uint8_t *)xp->sc->srp_iu_queue +
	    (uintptr_t)xp->srp_iu_offset);
	FUNC5(cmd, xp->srp_iu_size);
	cmd->type = SRP_TSK_MGMT;
	cmd->tag = (uint64_t)xp;
	cmd->lun = FUNC6(FUNC0(ccb->ccb_h.target_lun));

	switch (ccb->ccb_h.func_code) {
	case XPT_RESET_DEV:
		cmd->function = 0x08;
		break;
	default:
		FUNC8("Unimplemented code %d", ccb->ccb_h.func_code);
		break;
	}

	FUNC4(xp->sc->crq_tag, xp->sc->crq_map, BUS_DMASYNC_PREWRITE);

	/* Create CRQ entry */
	crq.valid = 0x80;
	crq.format = 0x01;
	crq.iu_data = xp->sc->srp_iu_phys + xp->srp_iu_offset;

	err = FUNC9(H_SEND_CRQ, xp->sc->unit, ((uint64_t *)(&crq))[0],
	    ((uint64_t *)(&crq))[1]);
	if (err != 0)
		FUNC8("CRQ send failure (%d)", err);
}