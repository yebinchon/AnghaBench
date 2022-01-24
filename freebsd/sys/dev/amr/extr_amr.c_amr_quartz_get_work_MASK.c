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
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct amr_softc {TYPE_1__* amr_mailbox; } ;
struct amr_mailbox {int mb_nstatus; int mb_status; int* mb_completed; } ;
struct TYPE_2__ {int mb_nstatus; int* mb_completed; int mb_status; } ;

/* Variables and functions */
 int FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amr_softc*) ; 
 int AMR_QIDB_ACK ; 
 int /*<<< orphan*/  AMR_QODB_READY ; 
 int /*<<< orphan*/  FUNC2 (struct amr_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amr_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct amr_softc *sc, struct amr_mailbox *mbsave)
{
    int		worked, i;
    u_int32_t	outd;
    u_int8_t	nstatus;
    u_int8_t	completed[46];

    FUNC5(3);

    worked = 0;

    /* work waiting for us? */
    if ((outd = FUNC1(sc)) == AMR_QODB_READY) {

	/* acknowledge interrupt */
	FUNC3(sc, AMR_QODB_READY);

	while ((nstatus = sc->amr_mailbox->mb_nstatus) == 0xff)
	    FUNC4(1);
	sc->amr_mailbox->mb_nstatus = 0xff;

	/* wait until fw wrote out all completions */
	for (i = 0; i < nstatus; i++) {
	    while ((completed[i] = sc->amr_mailbox->mb_completed[i]) == 0xff)
		FUNC4(1);
	    sc->amr_mailbox->mb_completed[i] = 0xff;
	}

	/* Save information for later processing */
	mbsave->mb_nstatus = nstatus;
	mbsave->mb_status = sc->amr_mailbox->mb_status;
	sc->amr_mailbox->mb_status = 0xff;

	for (i = 0; i < nstatus; i++)
	    mbsave->mb_completed[i] = completed[i];

	/* acknowledge that we have the commands */
	FUNC2(sc, AMR_QIDB_ACK);

#if 0
#ifndef AMR_QUARTZ_GOFASTER
	/*
	 * This waits for the controller to notice that we've taken the
	 * command from it.  It's very inefficient, and we shouldn't do it,
	 * but if we remove this code, we stop completing commands under
	 * load.
	 *
	 * Peter J says we shouldn't do this.  The documentation says we
	 * should.  Who is right?
	 */
	while(AMR_QGET_IDB(sc) & AMR_QIDB_ACK)
	    ;				/* XXX aiee! what if it dies? */
#endif
#endif

	worked = 1;			/* got some work */
    }

    return(worked);
}