#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ flag; } ;
struct TYPE_5__ {scalar_t__ command_id; int /*<<< orphan*/  residue; void* sense_length; void* status; } ;
union mly_status_packet {TYPE_3__ mmbox; TYPE_2__ status; } ;
typedef  scalar_t__ u_int16_t ;
struct mly_softc {size_t mly_mmbox_status_index; int mly_state; int /*<<< orphan*/  mly_task_complete; int /*<<< orphan*/  mly_odbr; struct mly_command* mly_command; TYPE_1__* mly_mmbox; int /*<<< orphan*/  mly_idbr; scalar_t__ mly_status_mailbox; } ;
struct mly_command {int /*<<< orphan*/  mc_flags; int /*<<< orphan*/  mc_resid; void* mc_sense; void* mc_status; } ;
struct TYPE_4__ {union mly_status_packet* mmm_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLY_AM_STSREADY ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  MLY_CMD_BUSY ; 
 void* FUNC1 (struct mly_softc*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct mly_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mly_softc*,scalar_t__) ; 
 int /*<<< orphan*/  MLY_HM_STSACK ; 
 int /*<<< orphan*/  MLY_HM_STSREADY ; 
 int MLY_MMBOX_STATUS ; 
 scalar_t__ FUNC4 (struct mly_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mly_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MLY_SLOT_MAX ; 
 scalar_t__ MLY_SLOT_START ; 
 int MLY_STATE_INTERRUPTS_ON ; 
 int /*<<< orphan*/  FUNC6 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct mly_command*) ; 
 int /*<<< orphan*/  FUNC8 (struct mly_softc*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mly_command*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC11(struct mly_softc *sc) 
{
    struct mly_command		*mc;
    union mly_status_packet	*sp;
    u_int16_t			slot;
    int				worked;

    FUNC0(sc);
    worked = 0;

    /* pick up hardware-mailbox commands */
    if (FUNC4(sc, MLY_HM_STSREADY)) {
	slot = FUNC2(sc, sc->mly_status_mailbox);
	if (slot < MLY_SLOT_MAX) {
	    mc = &sc->mly_command[slot - MLY_SLOT_START];
	    mc->mc_status = FUNC1(sc, sc->mly_status_mailbox + 2);
	    mc->mc_sense = FUNC1(sc, sc->mly_status_mailbox + 3);
	    mc->mc_resid = FUNC3(sc, sc->mly_status_mailbox + 4);
	    FUNC9(mc);
	    mc->mc_flags &= ~MLY_CMD_BUSY;
	    FUNC7(mc);
	    worked = 1;
	} else {
	    /* slot 0xffff may mean "extremely bogus command" */
	    FUNC8(sc, "got HM completion for illegal slot %u\n", slot);
	}
	/* unconditionally acknowledge status */
	FUNC5(sc, sc->mly_odbr, MLY_HM_STSREADY);
	FUNC5(sc, sc->mly_idbr, MLY_HM_STSACK);
    }

    /* pick up memory-mailbox commands */
    if (FUNC4(sc, MLY_AM_STSREADY)) {
	for (;;) {
	    sp = &sc->mly_mmbox->mmm_status[sc->mly_mmbox_status_index];

	    /* check for more status */
	    if (sp->mmbox.flag == 0)
		break;

	    /* get slot number */
	    slot = sp->status.command_id;
	    if (slot < MLY_SLOT_MAX) {
		mc = &sc->mly_command[slot - MLY_SLOT_START];
		mc->mc_status = sp->status.status;
		mc->mc_sense = sp->status.sense_length;
		mc->mc_resid = sp->status.residue;
		FUNC9(mc);
		mc->mc_flags &= ~MLY_CMD_BUSY;
		FUNC7(mc);
		worked = 1;
	    } else {
		/* slot 0xffff may mean "extremely bogus command" */
		FUNC8(sc, "got AM completion for illegal slot %u at %d\n", 
			   slot, sc->mly_mmbox_status_index);
	    }

	    /* clear and move to next index */
	    sp->mmbox.flag = 0;
	    sc->mly_mmbox_status_index = (sc->mly_mmbox_status_index + 1) % MLY_MMBOX_STATUS;
	}
	/* acknowledge that we have collected status value(s) */
	FUNC5(sc, sc->mly_odbr, MLY_AM_STSREADY);
    }

    if (worked) {
	if (sc->mly_state & MLY_STATE_INTERRUPTS_ON)
	    FUNC10(taskqueue_thread, &sc->mly_task_complete);
	else
	    FUNC6(sc);
    }
}