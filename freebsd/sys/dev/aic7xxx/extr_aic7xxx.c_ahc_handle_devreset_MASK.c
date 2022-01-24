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
typedef  size_t u_int ;
struct ahc_tmode_tstate {struct ahc_tmode_lstate** enabled_luns; } ;
struct ahc_tmode_lstate {int dummy; } ;
struct ahc_softc {struct ahc_tmode_tstate** enabled_targets; } ;
struct ahc_devinfo {int target; int channel; size_t our_scsiid; int /*<<< orphan*/  role; } ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  AC_SENT_BDR ; 
 size_t AHC_NUM_LUNS ; 
 int /*<<< orphan*/  AHC_TRANS_CUR ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_SEL_TIMEOUT ; 
 int /*<<< orphan*/  MSG_BUS_DEV_RESET ; 
 int /*<<< orphan*/  MSG_EXT_WDTR_BUS_8_BIT ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (struct ahc_softc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,struct ahc_tmode_lstate*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,struct ahc_tmode_lstate*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahc_softc*,struct ahc_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int bootverbose ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int,int,int) ; 

__attribute__((used)) static void
FUNC8(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
		    cam_status status, char *message, int verbose_level)
{
#ifdef AHC_TARGET_MODE
	struct ahc_tmode_tstate* tstate;
	u_int lun;
#endif
	int found;

	found = FUNC0(ahc, devinfo->target, devinfo->channel,
			       CAM_LUN_WILDCARD, SCB_LIST_NULL, devinfo->role,
			       status);

#ifdef AHC_TARGET_MODE
	/*
	 * Send an immediate notify ccb to all target mord peripheral
	 * drivers affected by this action.
	 */
	tstate = ahc->enabled_targets[devinfo->our_scsiid];
	if (tstate != NULL) {
		for (lun = 0; lun < AHC_NUM_LUNS; lun++) {
			struct ahc_tmode_lstate* lstate;

			lstate = tstate->enabled_luns[lun];
			if (lstate == NULL)
				continue;

			ahc_queue_lstate_event(ahc, lstate, devinfo->our_scsiid,
					       MSG_BUS_DEV_RESET, /*arg*/0);
			ahc_send_lstate_events(ahc, lstate);
		}
	}
#endif

	/*
	 * Go back to async/narrow transfers and renegotiate.
	 */
	FUNC6(ahc, devinfo, MSG_EXT_WDTR_BUS_8_BIT,
		      AHC_TRANS_CUR, /*paused*/TRUE);
	FUNC5(ahc, devinfo, /*syncrate*/NULL,
			 /*period*/0, /*offset*/0, /*ppr_options*/0,
			 AHC_TRANS_CUR, /*paused*/TRUE);
	
	if (status != CAM_SEL_TIMEOUT)
		FUNC3(ahc, devinfo->channel, devinfo->target,
			       CAM_LUN_WILDCARD, AC_SENT_BDR, NULL);

	if (message != NULL
	 && (verbose_level <= bootverbose))
		FUNC7("%s: %s on %c:%d. %d SCBs aborted\n", FUNC1(ahc),
		       message, devinfo->channel, devinfo->target, found);
}