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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct vscsi_xfer {int srp_iu_size; TYPE_1__* sc; scalar_t__ srp_iu_offset; int /*<<< orphan*/ * ccb; } ;
struct vscsi_softc {int /*<<< orphan*/  crq_map; int /*<<< orphan*/  crq_tag; int /*<<< orphan*/  active_xferq; int /*<<< orphan*/  free_xferq; int /*<<< orphan*/  io_lock; } ;
struct vscsi_crq {int iu_length; int valid; int format; scalar_t__ iu_data; } ;
struct srp_login {scalar_t__ flags; int /*<<< orphan*/  buffer_formats; int /*<<< orphan*/  max_cmd_length; scalar_t__ tag; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  unit; scalar_t__ srp_iu_phys; scalar_t__ srp_iu_queue; int /*<<< orphan*/  srp_iu_arena; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  H_SEND_CRQ ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int M_BESTFIT ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  SRP_LOGIN_REQ ; 
 struct vscsi_xfer* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct srp_login*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  queue ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int,scalar_t__*) ; 

__attribute__((used)) static void
FUNC11(struct vscsi_softc *sc)
{
	struct vscsi_xfer *xp;
	struct srp_login *login;
	struct vscsi_crq crq;
	int err;

	FUNC7(&sc->io_lock, MA_OWNED);

	xp = FUNC0(&sc->free_xferq);
	if (xp == NULL)
		FUNC8("SCSI queue flooded");
	xp->ccb = NULL;
	FUNC2(&sc->free_xferq, xp, queue);
	FUNC1(&sc->active_xferq, xp, queue);
	
	/* Set up command */
	xp->srp_iu_size = crq.iu_length = 64;
	err = FUNC10(xp->sc->srp_iu_arena, xp->srp_iu_size,
	    M_BESTFIT | M_NOWAIT, &xp->srp_iu_offset);
	if (err)
		FUNC8("Error during VMEM allocation (%d)", err);

	login = (struct srp_login *)((uint8_t *)xp->sc->srp_iu_queue +
	    (uintptr_t)xp->srp_iu_offset);
	FUNC4(login, xp->srp_iu_size);
	login->type = SRP_LOGIN_REQ;
	login->tag = (uint64_t)(xp);
	login->max_cmd_length = FUNC6(256);
	login->buffer_formats = FUNC5(0x1 | 0x2); /* Direct and indirect */
	login->flags = 0;

	/* Create CRQ entry */
	crq.valid = 0x80;
	crq.format = 0x01;
	crq.iu_data = xp->sc->srp_iu_phys + xp->srp_iu_offset;
	FUNC3(sc->crq_tag, sc->crq_map, BUS_DMASYNC_PREWRITE);

	err = FUNC9(H_SEND_CRQ, xp->sc->unit, ((uint64_t *)(&crq))[0],
	    ((uint64_t *)(&crq))[1]);
	if (err != 0)
		FUNC8("CRQ send failure (%d)", err);
}