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
struct mly_user_command {scalar_t__ DataTransferLength; scalar_t__ RequestSenseLength; int /*<<< orphan*/  CommandStatus; int /*<<< orphan*/  RequestSenseBuffer; int /*<<< orphan*/  DataTransferBuffer; int /*<<< orphan*/  CommandMailbox; } ;
struct mly_softc {int /*<<< orphan*/  mly_lock; } ;
struct mly_command {scalar_t__ mc_length; int mc_flags; scalar_t__ mc_sense; scalar_t__ mc_resid; int /*<<< orphan*/ * mc_data; int /*<<< orphan*/  mc_status; int /*<<< orphan*/ * mc_packet; int /*<<< orphan*/ * mc_complete; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MLY_CMD_COMPLETE ; 
 int MLY_CMD_DATAIN ; 
 int MLY_CMD_DATAOUT ; 
 int /*<<< orphan*/  FUNC0 (struct mly_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mly_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (struct mly_softc*,struct mly_command**) ; 
 int /*<<< orphan*/  FUNC10 (struct mly_command*) ; 
 int FUNC11 (struct mly_command*) ; 
 int /*<<< orphan*/  FUNC12 (struct mly_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct mly_softc *sc, struct mly_user_command *uc)
{
    struct mly_command	*mc;
    int			error;

    /* allocate a command */
    FUNC0(sc);
    if (FUNC9(sc, &mc)) {
	FUNC1(sc);
	return (ENOMEM);	/* XXX Linux version will wait for a command */
    }
    FUNC1(sc);

    /* handle data size/direction */
    mc->mc_length = (uc->DataTransferLength >= 0) ? uc->DataTransferLength : -uc->DataTransferLength;
    if (mc->mc_length > 0) {
	if ((mc->mc_data = FUNC7(mc->mc_length, M_DEVBUF, M_NOWAIT)) == NULL) {
	    error = ENOMEM;
	    goto out;
	}
    }
    if (uc->DataTransferLength > 0) {
	mc->mc_flags |= MLY_CMD_DATAIN;
	FUNC3(mc->mc_data, mc->mc_length);
    }
    if (uc->DataTransferLength < 0) {
	mc->mc_flags |= MLY_CMD_DATAOUT;
	if ((error = FUNC4(uc->DataTransferBuffer, mc->mc_data, mc->mc_length)) != 0)
	    goto out;
    }

    /* copy the controller command */
    FUNC2(&uc->CommandMailbox, mc->mc_packet, sizeof(uc->CommandMailbox));

    /* clear command completion handler so that we get woken up */
    mc->mc_complete = NULL;

    /* execute the command */
    FUNC0(sc);
    if ((error = FUNC11(mc)) != 0) {
	FUNC1(sc);
	goto out;
    }
    while (!(mc->mc_flags & MLY_CMD_COMPLETE))
	FUNC12(mc, &sc->mly_lock, PRIBIO, "mlyioctl", 0);
    FUNC1(sc);

    /* return the data to userspace */
    if (uc->DataTransferLength > 0)
	if ((error = FUNC5(mc->mc_data, uc->DataTransferBuffer, mc->mc_length)) != 0)
	    goto out;
    
    /* return the sense buffer to userspace */
    if ((uc->RequestSenseLength > 0) && (mc->mc_sense > 0)) {
	if ((error = FUNC5(mc->mc_packet, uc->RequestSenseBuffer, 
			     FUNC8(uc->RequestSenseLength, mc->mc_sense))) != 0)
	    goto out;
    }
    
    /* return command results to userspace (caller will copy out) */
    uc->DataTransferLength = mc->mc_resid;
    uc->RequestSenseLength = FUNC8(uc->RequestSenseLength, mc->mc_sense);
    uc->CommandStatus = mc->mc_status;
    error = 0;

 out:
    if (mc->mc_data != NULL)
	FUNC6(mc->mc_data, M_DEVBUF);
    FUNC0(sc);
    FUNC10(mc);
    FUNC1(sc);
    return(error);
}