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
struct ahc_softc {int tqinfifonext; int features; int seqctl; } ;

/* Variables and functions */
 int AHC_CMD_CHAN ; 
 int BITBUCKET ; 
 int /*<<< orphan*/  CCSCBCNT ; 
 int /*<<< orphan*/  CCSCBCTL ; 
 int /*<<< orphan*/  CCSGCTL ; 
 int /*<<< orphan*/  CLRINT ; 
 int CLRSEQINT ; 
 int ENAUTOATNP ; 
 int ENRSELI ; 
 int ENSELI ; 
 int /*<<< orphan*/  LASTPHASE ; 
 int MSG_NOOP ; 
 int /*<<< orphan*/  MSG_OUT ; 
 int /*<<< orphan*/  MWI_RESIDUAL ; 
 int P_BUSFREE ; 
 int /*<<< orphan*/  SAVED_LUN ; 
 int /*<<< orphan*/  SAVED_SCSIID ; 
 int SCB_DMA ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISEQ_TEMPLATE ; 
 int /*<<< orphan*/  SCSISIGO ; 
 int /*<<< orphan*/  SEQADDR0 ; 
 int /*<<< orphan*/  SEQADDR1 ; 
 int /*<<< orphan*/  SEQCTL ; 
 int /*<<< orphan*/  SEQ_FLAGS2 ; 
 int /*<<< orphan*/  SXFRCTL1 ; 
 int /*<<< orphan*/  TQINPOS ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*) ; 

void
FUNC6(struct ahc_softc *ahc)
{

	FUNC4(ahc);

	/* No more pending messages. */
	FUNC1(ahc);

	FUNC3(ahc, SCSISIGO, 0);		/* De-assert BSY */
	FUNC3(ahc, MSG_OUT, MSG_NOOP);	/* No message to send */
	FUNC3(ahc, SXFRCTL1, FUNC2(ahc, SXFRCTL1) & ~BITBUCKET);
	FUNC3(ahc, LASTPHASE, P_BUSFREE);
	FUNC3(ahc, SAVED_SCSIID, 0xFF);
	FUNC3(ahc, SAVED_LUN, 0xFF);

	/*
	 * Ensure that the sequencer's idea of TQINPOS
	 * matches our own.  The sequencer increments TQINPOS
	 * only after it sees a DMA complete and a reset could
	 * occur before the increment leaving the kernel to believe
	 * the command arrived but the sequencer to not.
	 */
	FUNC3(ahc, TQINPOS, ahc->tqinfifonext);

	/* Always allow reselection */
	FUNC3(ahc, SCSISEQ,
		 FUNC2(ahc, SCSISEQ_TEMPLATE) & (ENSELI|ENRSELI|ENAUTOATNP));
	if ((ahc->features & AHC_CMD_CHAN) != 0) {
		/* Ensure that no DMA operations are in progress */
		FUNC3(ahc, CCSCBCNT, 0);
		FUNC3(ahc, CCSGCTL, 0);
		FUNC3(ahc, CCSCBCTL, 0);
	}
	/*
	 * If we were in the process of DMA'ing SCB data into
	 * an SCB, replace that SCB on the free list.  This prevents
	 * an SCB leak.
	 */
	if ((FUNC2(ahc, SEQ_FLAGS2) & SCB_DMA) != 0) {
		FUNC0(ahc);
		FUNC3(ahc, SEQ_FLAGS2,
			 FUNC2(ahc, SEQ_FLAGS2) & ~SCB_DMA);
	}

	/*
	 * Clear any pending sequencer interrupt.  It is no
	 * longer relevant since we're resetting the Program
	 * Counter.
	 */
	FUNC3(ahc, CLRINT, CLRSEQINT);

	FUNC3(ahc, MWI_RESIDUAL, 0);
	FUNC3(ahc, SEQCTL, ahc->seqctl);
	FUNC3(ahc, SEQADDR0, 0);
	FUNC3(ahc, SEQADDR1, 0);

	FUNC5(ahc);
}