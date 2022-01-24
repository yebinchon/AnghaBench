#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct amr_softc {int /*<<< orphan*/  amr_hw_lock; TYPE_1__* amr_mailbox; int /*<<< orphan*/  amr_dev; } ;
struct TYPE_4__ {scalar_t__ mb_ident; } ;
struct amr_command {TYPE_2__ ac_mailbox; scalar_t__ ac_slot; scalar_t__ ac_retries; struct amr_softc* ac_sc; } ;
struct TYPE_3__ {int mb_busy; scalar_t__ mb_ack; scalar_t__ mb_poll; } ;

/* Variables and functions */
 int FUNC0 (struct amr_softc*) ; 
 int AMR_SMBOX_BUSYFLAG ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct amr_command*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct timeval*,int*,int) ; 

__attribute__((used)) static int
FUNC7(struct amr_command *ac)
{
    struct amr_softc	*sc = ac->ac_sc;
    static struct timeval lastfail;
    static int		curfail;
  
    FUNC4(&sc->amr_hw_lock);
    if (FUNC0(sc) & AMR_SMBOX_BUSYFLAG) {
	FUNC5(&sc->amr_hw_lock);
	if (ac->ac_retries++ > 1000) {
	    if (FUNC6(&lastfail, &curfail, 1))
		FUNC3(sc->amr_dev, "Too many retries on command %p.  "
			      "Controller is likely dead\n", ac);
	    ac->ac_retries = 0;
	}
	return (EBUSY);
    }

    /* 
     * Save the slot number so that we can locate this command when complete.
     * Note that ident = 0 seems to be special, so we don't use it.
     */
    ac->ac_mailbox.mb_ident = ac->ac_slot + 1; /* will be coppied into mbox */
    FUNC2(&ac->ac_mailbox, (void *)(uintptr_t)(volatile void *)sc->amr_mailbox, 14);
    sc->amr_mailbox->mb_busy = 1;
    sc->amr_mailbox->mb_poll = 0;
    sc->amr_mailbox->mb_ack  = 0;

    FUNC1(sc);
    FUNC5(&sc->amr_hw_lock);
    return(0);
}