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
struct amr_softc {int ac_flags; int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/  amr_state; int /*<<< orphan*/  amr_busyslots; int /*<<< orphan*/  (* ac_complete ) (struct amr_softc*) ;} ;
struct amr_command {int ac_flags; int /*<<< orphan*/  amr_list_lock; int /*<<< orphan*/  amr_state; int /*<<< orphan*/  amr_busyslots; int /*<<< orphan*/  (* ac_complete ) (struct amr_softc*) ;} ;
typedef  int /*<<< orphan*/  ac_qhead_t ;

/* Variables and functions */
 int AMR_CMD_BUSY ; 
 int AMR_CMD_SLEEP ; 
 int /*<<< orphan*/  AMR_STATE_QUEUE_FRZN ; 
 struct amr_softc* FUNC0 (struct amr_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct amr_softc*) ; 

__attribute__((used)) static void
FUNC8(void *context, ac_qhead_t *head)
{
    struct amr_softc	*sc = (struct amr_softc *)context;
    struct amr_command	*ac;

    FUNC3(3);

    /* pull completed commands off the queue */
    for (;;) {
	ac = FUNC0(sc, head);
	if (ac == NULL)
	    break;

	/* unmap the command's data buffer */
	FUNC2(ac);

	/* 
	 * Is there a completion handler? 
	 */
	if (ac->ac_complete != NULL) {
	    /* unbusy the command */
	    ac->ac_flags &= ~AMR_CMD_BUSY;
	    ac->ac_complete(ac);
	    
	    /* 
	     * Is someone sleeping on this one?
	     */
	} else {
	    FUNC4(&sc->amr_list_lock);
	    ac->ac_flags &= ~AMR_CMD_BUSY;
	    if (ac->ac_flags & AMR_CMD_SLEEP) {
		/* unbusy the command */
		FUNC7(ac);
	    }
	    FUNC5(&sc->amr_list_lock);
	}

	if(!sc->amr_busyslots) {
	    FUNC7(sc);
	}
    }

    FUNC4(&sc->amr_list_lock);
    sc->amr_state &= ~AMR_STATE_QUEUE_FRZN;
    FUNC1(sc);
    FUNC5(&sc->amr_list_lock);
}