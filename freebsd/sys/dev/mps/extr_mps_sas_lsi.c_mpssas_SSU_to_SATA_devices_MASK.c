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
struct TYPE_2__ {struct mpssas_softc* ppriv_ptr1; int /*<<< orphan*/  path; int /*<<< orphan*/  target_id; } ;
union ccb {int /*<<< orphan*/  csio; TYPE_1__ ccb_h; } ;
typedef  size_t target_id_t ;
struct mpssas_target {int handle; scalar_t__ stop_at_shutdown; } ;
struct mpssas_softc {int /*<<< orphan*/  sim; struct mpssas_target* targets; } ;
struct mps_softc {scalar_t__ SSU_refcount; size_t max_devices; int /*<<< orphan*/  SSU_started; struct mpssas_softc* sassc; } ;
typedef  int /*<<< orphan*/  path_str ;
typedef  int /*<<< orphan*/  path_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPS_FAULT ; 
 int /*<<< orphan*/  MPS_INFO ; 
 int /*<<< orphan*/  MPS_SENSE_LEN ; 
 int /*<<< orphan*/  MSG_SIMPLE_Q_TAG ; 
 int RB_NOSYNC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct mps_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  mpssas_stop_unit_done ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 union ccb* FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (union ccb*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xpt_periph ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct mps_softc *sc, int howto)
{
	struct mpssas_softc *sassc = sc->sassc;
	union ccb *ccb;
	path_id_t pathid = FUNC1(sassc->sim);
	target_id_t targetid;
	struct mpssas_target *target;
	char path_str[64];
	int timeout;

	/*
	 * For each target, issue a StartStopUnit command to stop the device.
	 */
	sc->SSU_started = TRUE;
	sc->SSU_refcount = 0;
	for (targetid = 0; targetid < sc->max_devices; targetid++) {
		target = &sassc->targets[targetid];
		if (target->handle == 0x0) {
			continue;
		}

		ccb = FUNC6();
		if (ccb == NULL) {
			FUNC2(sc, MPS_FAULT, "Unable to alloc CCB to stop "
			    "unit.\n");
			return;
		}

		/*
		 * The stop_at_shutdown flag will be set if this device is
		 * a SATA direct-access end device.
		 */
		if (target->stop_at_shutdown) {
			if (FUNC7(&ccb->ccb_h.path,
			    xpt_periph, pathid, targetid,
			    CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
				FUNC2(sc, MPS_FAULT, "Unable to create "
				    "LUN path to stop unit.\n");
				FUNC8(ccb);
				return;
			}
			FUNC9(ccb->ccb_h.path, path_str,
			    sizeof(path_str));

			FUNC2(sc, MPS_INFO, "Sending StopUnit: path %s "
			    "handle %d\n", path_str, target->handle);
			
			/*
			 * Issue a START STOP UNIT command for the target.
			 * Increment the SSU counter to be used to count the
			 * number of required replies.
			 */
			FUNC2(sc, MPS_INFO, "Incrementing SSU count\n");
			sc->SSU_refcount++;
			ccb->ccb_h.target_id =
			    FUNC10(ccb->ccb_h.path);
			ccb->ccb_h.ppriv_ptr1 = sassc;
			FUNC4(&ccb->csio,
			    /*retries*/0,
			    mpssas_stop_unit_done,
			    MSG_SIMPLE_Q_TAG,
			    /*start*/FALSE,
			    /*load/eject*/0,
			    /*immediate*/FALSE,
			    MPS_SENSE_LEN,
			    /*timeout*/10000);
			FUNC5(ccb);
		}
	}

	/*
	 * Timeout after 60 seconds by default or 10 seconds if howto has
	 * RB_NOSYNC set which indicates we're likely handling a panic.
	 */
	timeout = 600;
	if (howto & RB_NOSYNC)
		timeout = 100;

	/*
	 * Wait until all of the SSU commands have completed or timeout has
	 * expired.  Pause for 100ms each time through.  If any command
	 * times out, the target will be reset in the SCSI command timeout
	 * routine.
	 */
	while (sc->SSU_refcount > 0) {
		FUNC3("mpswait", hz/10);
		if (FUNC0())
			FUNC11(sassc->sim);

		if (--timeout == 0) {
			FUNC2(sc, MPS_FAULT, "Time has expired waiting "
			    "for SSU commands to complete.\n");
			break;
		}
	}
}