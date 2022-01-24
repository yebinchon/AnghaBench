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
struct amr_softc {int /*<<< orphan*/  amr_list_lock; scalar_t__ (* amr_poll_command ) (struct amr_command*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  mb_command; } ;
struct amr_command {int ac_flags; int ac_status; TYPE_1__ ac_mailbox; } ;

/* Variables and functions */
 int AMR_CMD_DATAOUT ; 
 int /*<<< orphan*/  AMR_CMD_FLUSH ; 
 int AMR_CMD_PRIORITY ; 
 struct amr_command* FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct amr_command*) ; 

int
FUNC5(struct amr_softc *sc)
{
    struct amr_command	*ac;
    int			error;

    /* get ourselves a command buffer */
    error = 1;
    FUNC2(&sc->amr_list_lock);
    ac = FUNC0(sc);
    FUNC3(&sc->amr_list_lock);
    if (ac == NULL)
	goto out;
    /* set command flags */
    ac->ac_flags |= AMR_CMD_PRIORITY | AMR_CMD_DATAOUT;
    
    /* build the command proper */
    ac->ac_mailbox.mb_command = AMR_CMD_FLUSH;

    /* we have to poll, as the system may be going down or otherwise damaged */
    if (sc->amr_poll_command(ac))
	goto out;
    error = ac->ac_status;
    
 out:
    FUNC2(&sc->amr_list_lock);
    if (ac != NULL)
	FUNC1(ac);
    FUNC3(&sc->amr_list_lock);
    return(error);
}