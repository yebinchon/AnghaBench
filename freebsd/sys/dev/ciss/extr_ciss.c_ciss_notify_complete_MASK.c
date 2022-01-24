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
struct ciss_softc {int ciss_flags; int /*<<< orphan*/ * ciss_notify; int /*<<< orphan*/ * ciss_periodic_notify; } ;
struct ciss_request {struct ciss_softc* cr_sc; scalar_t__ cr_data; struct ciss_command* cr_cc; } ;
struct ciss_notify {scalar_t__* message; scalar_t__ class; scalar_t__ subclass; int detail; } ;
struct ciss_command {int dummy; } ;

/* Variables and functions */
 int CISS_CMD_STATUS_SUCCESS ; 
 int CISS_CMD_STATUS_TARGET_STATUS ; 
 int CISS_CMD_STATUS_TIMEOUT ; 
 int CISS_FLAG_ABORTING ; 
 int CISS_FLAG_NOTIFY_OK ; 
 scalar_t__ CISS_NOTIFY_NOTIFIER ; 
 scalar_t__ CISS_NOTIFY_NOTIFIER_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct ciss_request*) ; 
 scalar_t__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ciss_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ciss_softc*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ciss_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct ciss_request*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC9(struct ciss_request *cr)
{
    struct ciss_command	*cc;
    struct ciss_notify	*cn;
    struct ciss_softc	*sc;
    int			scsi_status;
    int			command_status;
    FUNC7(1);

    cc = cr->cr_cc;
    cn = (struct ciss_notify *)cr->cr_data;
    sc = cr->cr_sc;

    /*
     * Report request results, decode status.
     */
    FUNC5(cr, &command_status, &scsi_status);

    /*
     * Abort the chain on a fatal error.
     *
     * XXX which of these are actually errors?
     */
    if ((command_status != CISS_CMD_STATUS_SUCCESS) &&
	(command_status != CISS_CMD_STATUS_TARGET_STATUS) &&
	(command_status != CISS_CMD_STATUS_TIMEOUT)) {	/* XXX timeout? */
	FUNC3(sc, "fatal error in Notify Event request (%s)\n",
		    FUNC1(command_status));
	FUNC4(cr);
	sc->ciss_flags &= ~CISS_FLAG_NOTIFY_OK;
	return;
    }

    /*
     * If the adapter gave us a text message, print it.
     */
    if (cn->message[0] != 0)
	FUNC3(sc, "*** %.80s\n", cn->message);

    FUNC6(0, "notify event class %d subclass %d detail %d",
		cn->class, cn->subclass, cn->detail);

    /*
     * If the response indicates that the notifier has been aborted,
     * release the notifier command.
     */
    if ((cn->class == CISS_NOTIFY_NOTIFIER) &&
	(cn->subclass == CISS_NOTIFY_NOTIFIER_STATUS) &&
	(cn->detail == 1)) {
	FUNC6(0, "notifier exiting");
	sc->ciss_flags &= ~CISS_FLAG_NOTIFY_OK;
	FUNC4(cr);
	sc->ciss_periodic_notify = NULL;
	FUNC8(&sc->ciss_periodic_notify);
    } else {
	/* Handle notify events in a kernel thread */
	FUNC0(cr);
	sc->ciss_periodic_notify = NULL;
	FUNC8(&sc->ciss_periodic_notify);
	FUNC8(&sc->ciss_notify);
    }
    /*
     * Send a new notify event command, if we're not aborting.
     */
    if (!(sc->ciss_flags & CISS_FLAG_ABORTING)) {
	FUNC2(sc);
    }
}