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
struct amr_softc {int /*<<< orphan*/  amr_dev; struct amr_command** amr_busycmd; scalar_t__ (* amr_get_work ) (struct amr_softc*,struct amr_mailbox*) ;} ;
struct amr_mailbox {int mb_nstatus; int* mb_completed; int /*<<< orphan*/  mb_status; } ;
struct amr_command {int /*<<< orphan*/  ac_status; } ;
typedef  int /*<<< orphan*/  ac_qhead_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_command*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC7 (struct amr_softc*,struct amr_mailbox*) ; 

int
FUNC8(struct amr_softc *sc)
{
    ac_qhead_t		head;
    struct amr_command	*ac;
    struct amr_mailbox	mbox;
    int			i, idx, result;
    
    FUNC5(3);

    /* See if there's anything for us to do */
    result = 0;
    FUNC3(&head);

    /* loop collecting completed commands */
    for (;;) {
	/* poll for a completed command's identifier and status */
	if (sc->amr_get_work(sc, &mbox)) {
	    result = 1;
	    
	    /* iterate over completed commands in this result */
	    for (i = 0; i < mbox.mb_nstatus; i++) {
		/* get pointer to busy command */
		idx = mbox.mb_completed[i] - 1;
		ac = sc->amr_busycmd[idx];

		/* really a busy command? */
		if (ac != NULL) {

		    /* pull the command from the busy index */
		    FUNC2(ac);
		
		    /* save status for later use */
		    ac->ac_status = mbox.mb_status;
		    FUNC1(ac, &head);
		    FUNC4(3, "completed command with status %x", mbox.mb_status);
		} else {
		    FUNC6(sc->amr_dev, "bad slot %d completed\n", idx);
		}
	    }
	} else
	    break;	/* no work */
    }

    /* handle completion and timeouts */
    FUNC0(sc, &head);

    return(result);
}