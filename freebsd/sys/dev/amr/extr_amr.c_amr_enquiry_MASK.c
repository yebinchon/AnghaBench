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
typedef  int /*<<< orphan*/  u_int8_t ;
struct amr_softc {int /*<<< orphan*/  amr_list_lock; scalar_t__ (* amr_poll_command ) (struct amr_command*) ;} ;
struct amr_command {int ac_flags; size_t ac_length; int ac_status; int /*<<< orphan*/  ac_mailbox; void* ac_data; } ;

/* Variables and functions */
 int AMR_CMD_DATAIN ; 
 int AMR_CMD_PRIORITY ; 
 int /*<<< orphan*/  M_AMR ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 struct amr_command* FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_command*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct amr_command*) ; 

__attribute__((used)) static void *
FUNC8(struct amr_softc *sc, size_t bufsize, u_int8_t cmd, u_int8_t cmdsub, u_int8_t cmdqual, int *status)
{
    struct amr_command	*ac;
    void		*result;
    u_int8_t		*mbox;
    int			error;

    FUNC2(1);

    error = 1;
    result = NULL;
    
    /* get ourselves a command buffer */
    FUNC5(&sc->amr_list_lock);
    ac = FUNC0(sc);
    FUNC6(&sc->amr_list_lock);
    if (ac == NULL)
	goto out;
    /* allocate the response structure */
    if ((result = FUNC4(bufsize, M_AMR, M_ZERO|M_NOWAIT)) == NULL)
	goto out;
    /* set command flags */

    ac->ac_flags |= AMR_CMD_PRIORITY | AMR_CMD_DATAIN;
    
    /* point the command at our data */
    ac->ac_data = result;
    ac->ac_length = bufsize;
    
    /* build the command proper */
    mbox = (u_int8_t *)&ac->ac_mailbox;		/* XXX want a real structure for this? */
    mbox[0] = cmd;
    mbox[2] = cmdsub;
    mbox[3] = cmdqual;
    *status = 0;

    /* can't assume that interrupts are going to work here, so play it safe */
    if (sc->amr_poll_command(ac))
	goto out;
    error = ac->ac_status;
    *status = ac->ac_status;
    
 out:
    FUNC5(&sc->amr_list_lock);
    if (ac != NULL)
	FUNC1(ac);
    FUNC6(&sc->amr_list_lock);
    if ((error != 0) && (result != NULL)) {
	FUNC3(result, M_AMR);
	result = NULL;
    }
    return(result);
}