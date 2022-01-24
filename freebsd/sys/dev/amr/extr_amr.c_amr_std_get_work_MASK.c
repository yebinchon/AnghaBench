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
typedef  int u_int8_t ;
struct amr_softc {scalar_t__ amr_mailbox; } ;
struct amr_mailbox {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amr_softc*) ; 
 int FUNC1 (struct amr_softc*) ; 
 int AMR_SINTR_VALID ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct amr_mailbox*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct amr_softc *sc, struct amr_mailbox *mbsave)
{
    int		worked;
    u_int8_t	istat;

    FUNC4(3);

    worked = 0;

    /* check for valid interrupt status */
    istat = FUNC1(sc);
    if ((istat & AMR_SINTR_VALID) != 0) {
	FUNC2(sc, istat);	/* ack interrupt status */

	/* save mailbox, which contains a list of completed commands */
	FUNC3((void *)(uintptr_t)(volatile void *)sc->amr_mailbox, mbsave, sizeof(*mbsave));

	FUNC0(sc);		/* acknowledge we have the mailbox */
	worked = 1;
    }

    return(worked);
}