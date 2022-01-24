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
struct amr_softc {int amr_state; int amr_mailboxphys; int /*<<< orphan*/  amr_hw_lock; TYPE_1__* amr_mailbox; int /*<<< orphan*/  amr_dev; scalar_t__ amr_busyslots; } ;
struct amr_command {int ac_status; int ac_flags; int /*<<< orphan*/  ac_datamap; int /*<<< orphan*/  ac_tag; int /*<<< orphan*/  ac_mailbox; int /*<<< orphan*/ * ac_data; } ;
struct TYPE_2__ {int mb_ident; int mb_nstatus; int mb_status; int mb_poll; int mb_ack; int mb_busy; } ;

/* Variables and functions */
 int AMR_CMD_DATAIN ; 
 int AMR_CMD_DATAOUT ; 
 int /*<<< orphan*/  AMR_MBOX_CMDSIZE ; 
 int FUNC0 (struct amr_softc*) ; 
 int AMR_QIDB_ACK ; 
 int AMR_QIDB_SUBMIT ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*,int) ; 
 int AMR_STATE_INTEN ; 
 int AMR_STATUS_SUCCESS ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PCATCH ; 
 int PRIBIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC7 (struct amr_softc*,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct amr_softc *sc, struct amr_command *ac)
{
    int count, error;

    FUNC8(&sc->amr_hw_lock);
    if ((sc->amr_state & AMR_STATE_INTEN) == 0) {
	count=0;
	while (sc->amr_busyslots) {
	    FUNC7(sc, &sc->amr_hw_lock, PRIBIO | PCATCH, "amrpoll", hz);
	    if(count++>10) {
		break;
	    }
	}

	if(sc->amr_busyslots) {
	    FUNC6(sc->amr_dev, "adapter is busy\n");
	    FUNC9(&sc->amr_hw_lock);
	    if (ac->ac_data != NULL) {
		FUNC5(ac->ac_tag, ac->ac_datamap);
	    }
    	    ac->ac_status=0;
	    return(1);
	}
    }

    FUNC3(&ac->ac_mailbox, (void *)(uintptr_t)(volatile void *)sc->amr_mailbox, AMR_MBOX_CMDSIZE);

    /* clear the poll/ack fields in the mailbox */
    sc->amr_mailbox->mb_ident = 0xFE;
    sc->amr_mailbox->mb_nstatus = 0xFF;
    sc->amr_mailbox->mb_status = 0xFF;
    sc->amr_mailbox->mb_poll = 0;
    sc->amr_mailbox->mb_ack = 0;
    sc->amr_mailbox->mb_busy = 1;

    FUNC1(sc, sc->amr_mailboxphys | AMR_QIDB_SUBMIT);

    while(sc->amr_mailbox->mb_nstatus == 0xFF)
	FUNC2(1);
    while(sc->amr_mailbox->mb_status == 0xFF)
	FUNC2(1);
    ac->ac_status=sc->amr_mailbox->mb_status;
    error = (ac->ac_status !=AMR_STATUS_SUCCESS) ? 1:0;
    while(sc->amr_mailbox->mb_poll != 0x77)
	FUNC2(1);
    sc->amr_mailbox->mb_poll = 0;
    sc->amr_mailbox->mb_ack = 0x77;

    /* acknowledge that we have the commands */
    FUNC1(sc, sc->amr_mailboxphys | AMR_QIDB_ACK);
    while(FUNC0(sc) & AMR_QIDB_ACK)
	FUNC2(1);
    FUNC9(&sc->amr_hw_lock);

    /* unmap the command's data buffer */
    if (ac->ac_flags & AMR_CMD_DATAIN) {
	FUNC4(ac->ac_tag, ac->ac_datamap, BUS_DMASYNC_POSTREAD);
    }
    if (ac->ac_flags & AMR_CMD_DATAOUT) {
	FUNC4(ac->ac_tag, ac->ac_datamap, BUS_DMASYNC_POSTWRITE);
    }
    FUNC5(ac->ac_tag, ac->ac_datamap);

    return(error);
}