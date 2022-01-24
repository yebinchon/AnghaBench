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
struct ahd_softc {int tqinfifonext; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_MODE_CCHAN ; 
 int /*<<< orphan*/  AHD_MODE_SCSI ; 
 int BITBUCKET ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRSEQINT ; 
 int ENAUTOATNP ; 
 int ENRSELI ; 
 int ENSELI ; 
 int FASTMODE ; 
 int /*<<< orphan*/  LASTPHASE ; 
 int MSG_NOOP ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int P_BUSFREE ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int /*<<< orphan*/  SCSISEQ1 ; 
 int /*<<< orphan*/  SCSISEQ_TEMPLATE ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SEQCTL0 ; 
 int /*<<< orphan*/  SEQINTCTL ; 
 int SEQRESET ; 
 int /*<<< orphan*/  SEQ_FLAGS ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int /*<<< orphan*/  TQINPOS ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 int FUNC1 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahd_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*) ; 

void
FUNC6(struct ahd_softc *ahd)
{

	FUNC3(ahd);

	FUNC4(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);

	/* No more pending messages */
	FUNC0(ahd);
	FUNC2(ahd, SCSISIGO, 0);		/* De-assert BSY */
	FUNC2(ahd, MSG_OUT, MSG_NOOP);	/* No message to send */
	FUNC2(ahd, SXFRCTL1, FUNC1(ahd, SXFRCTL1) & ~BITBUCKET);
	FUNC2(ahd, SEQINTCTL, 0);
	FUNC2(ahd, LASTPHASE, P_BUSFREE);
	FUNC2(ahd, SEQ_FLAGS, 0);
	FUNC2(ahd, SAVED_SCSIID, 0xFF);
	FUNC2(ahd, SAVED_LUN, 0xFF);

	/*
	 * Ensure that the sequencer's idea of TQINPOS
	 * matches our own.  The sequencer increments TQINPOS
	 * only after it sees a DMA complete and a reset could
	 * occur before the increment leaving the kernel to believe
	 * the command arrived but the sequencer to not.
	 */
	FUNC2(ahd, TQINPOS, ahd->tqinfifonext);

	/* Always allow reselection */
	FUNC2(ahd, SCSISEQ1,
		 FUNC1(ahd, SCSISEQ_TEMPLATE) & (ENSELI|ENRSELI|ENAUTOATNP));
	FUNC4(ahd, AHD_MODE_CCHAN, AHD_MODE_CCHAN);

	/*
	 * Clear any pending sequencer interrupt.  It is no
	 * longer relevant since we're resetting the Program
	 * Counter.
	 */
	FUNC2(ahd, CLRINT, CLRSEQINT);

	FUNC2(ahd, SEQCTL0, FASTMODE|SEQRESET);
	FUNC5(ahd);
}