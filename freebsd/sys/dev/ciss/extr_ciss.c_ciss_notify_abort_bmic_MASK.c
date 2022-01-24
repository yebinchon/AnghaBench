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
struct ciss_softc {int ciss_flags; } ;
struct ciss_request {int dummy; } ;

/* Variables and functions */
#define  CISS_CMD_STATUS_SUCCESS 128 
 int /*<<< orphan*/  CISS_COMMAND_ABORT_NOTIFY ; 
 int CISS_FLAG_NOTIFY_OK ; 
 int EIO ; 
 int FUNC0 (struct ciss_softc*,struct ciss_request**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_request*,int*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ciss_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(struct ciss_softc *sc)
{
    struct ciss_request			*cr;
    int					error, command_status;

    FUNC6(1);

    cr = NULL;
    error = 0;

    /* verify that there's an outstanding command */
    if (!(sc->ciss_flags & CISS_FLAG_NOTIFY_OK))
	goto out;

    /*
     * Build a BMIC command to cancel the Notify on Event command.
     *
     * Note that we are sending a CISS opcode here.  Odd.
     */
    if ((error = FUNC0(sc, &cr, CISS_COMMAND_ABORT_NOTIFY,
				       NULL, 0)) != 0)
	goto out;

    /*
     * Submit the request and wait for it to complete.
     */
    if ((error = FUNC5(cr, 60 * 1000)) != 0) {
	FUNC2(sc, "error sending BMIC Cancel Notify on Event command (%d)\n", error);
	goto out;
    }

    /*
     * Check response.
     */
    FUNC4(cr, &command_status, NULL);
    switch(command_status) {
    case CISS_CMD_STATUS_SUCCESS:
	break;
    default:
	FUNC2(sc, "error cancelling Notify on Event (%s)\n",
		    FUNC1(command_status));
	error = EIO;
	goto out;
    }

out:
    if (cr != NULL)
	FUNC3(cr);
    return(error);
}