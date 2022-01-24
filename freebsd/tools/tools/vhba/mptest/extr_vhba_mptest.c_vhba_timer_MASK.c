#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sim; TYPE_3__* private; } ;
typedef  TYPE_2__ vhba_softc_t ;
struct TYPE_5__ {struct cam_path* path; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct TYPE_7__ {int* luns; int /*<<< orphan*/  tick; } ;
typedef  TYPE_3__ mptest_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  VMP_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ vhba_notify_start ; 
 scalar_t__ vhba_notify_stop ; 
 int vhba_start_lun ; 
 int vhba_stop_lun ; 
 union ccb* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct cam_path*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct cam_path**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (union ccb*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_path*) ; 
 int /*<<< orphan*/  xpt_periph ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 

__attribute__((used)) static void
FUNC8(void *arg)
{
	int lun;
	vhba_softc_t *vhba = arg;
	mptest_t *vhbas = vhba->private;
	if (vhba_stop_lun) {
		lun = (vhba_stop_lun & 1)? 0 : 1;
		if (lun == 0 || lun == 1) {
			if (vhbas->luns[lun]) {
				struct cam_path *tp;
				if (vhba_notify_stop) {
					if (FUNC4(&tp, xpt_periph, FUNC1(vhba->sim), 0, lun) != CAM_REQ_CMP) {
						goto out;
					}
					vhbas->luns[lun] = 0;
					FUNC3(AC_LOST_DEVICE, tp, NULL);
					FUNC6(tp);
				} else {
					vhbas->luns[lun] = 0;
				}
			}
		}
		vhba_stop_lun &= ~(1 << lun);
	} else if (vhba_start_lun) {
		lun = (vhba_start_lun & 1)? 0 : 1;
		if (lun == 0 || lun == 1) {
			if (vhbas->luns[lun] == 0) {
				if (vhba_notify_start) {
					union ccb *ccb;
					ccb = FUNC2();
					if (ccb == NULL) {
						goto out;
					}
					if (FUNC4(&ccb->ccb_h.path, xpt_periph, FUNC1(vhba->sim), CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
						FUNC5(ccb);
						goto out;
					}
					vhbas->luns[lun] = 1;
					FUNC7(ccb);
				} else {
					vhbas->luns[lun] = 1;
				}
			}
		}
		vhba_start_lun &= ~(1 << lun);
	}
out:
	FUNC0(&vhbas->tick, VMP_TIME, vhba_timer, vhba);
}