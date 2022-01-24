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
typedef  int u_int ;
struct target_cmd {scalar_t__ cmd_valid; } ;
struct ahc_softc {int features; size_t tqinfifonext; int /*<<< orphan*/  shared_data_dmamap; int /*<<< orphan*/  shared_data_dmat; struct target_cmd* targetcmds; } ;

/* Variables and functions */
 int AHC_AUTOPAUSE ; 
 int AHC_HS_MAILBOX ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_PREREAD ; 
 int HOST_TQINPOS ; 
 int /*<<< orphan*/  HS_MAILBOX ; 
 int /*<<< orphan*/  KERNEL_TQINPOS ; 
 int TRUE ; 
 scalar_t__ FUNC0 (struct ahc_softc*,struct target_cmd*) ; 
 int FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC8(struct ahc_softc *ahc, int paused)
{
	struct target_cmd *cmd;

	/*
	 * If the card supports auto-access pause,
	 * we can access the card directly regardless
	 * of whether it is paused or not.
	 */
	if ((ahc->features & AHC_AUTOPAUSE) != 0)
		paused = TRUE;

	FUNC4(ahc, BUS_DMASYNC_POSTREAD);
	while ((cmd = &ahc->targetcmds[ahc->tqinfifonext])->cmd_valid != 0) {

		/*
		 * Only advance through the queue if we
		 * have the resources to process the command.
		 */
		if (FUNC0(ahc, cmd) != 0)
			break;

		cmd->cmd_valid = 0;
		FUNC7(ahc, ahc->shared_data_dmat,
				ahc->shared_data_dmamap,
				FUNC5(ahc, ahc->tqinfifonext),
				sizeof(struct target_cmd),
				BUS_DMASYNC_PREREAD);
		ahc->tqinfifonext++;

		/*
		 * Lazily update our position in the target mode incoming
		 * command queue as seen by the sequencer.
		 */
		if ((ahc->tqinfifonext & (HOST_TQINPOS - 1)) == 1) {
			if ((ahc->features & AHC_HS_MAILBOX) != 0) {
				u_int hs_mailbox;

				hs_mailbox = FUNC1(ahc, HS_MAILBOX);
				hs_mailbox &= ~HOST_TQINPOS;
				hs_mailbox |= ahc->tqinfifonext & HOST_TQINPOS;
				FUNC2(ahc, HS_MAILBOX, hs_mailbox);
			} else {
				if (!paused)
					FUNC3(ahc);	
				FUNC2(ahc, KERNEL_TQINPOS,
					 ahc->tqinfifonext & HOST_TQINPOS);
				if (!paused)
					FUNC6(ahc);
			}
		}
	}
}