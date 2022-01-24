#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  cbfcnp; int /*<<< orphan*/  func_code; } ;
union ccb {TYPE_2__ crcn; TYPE_3__ ccb_h; } ;
struct TYPE_4__ {int /*<<< orphan*/  sim; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct cam_path {int dummy; } ;
typedef  scalar_t__ cam_status ;

/* Variables and functions */
 int /*<<< orphan*/  CAM_FLAG_NONE ; 
 scalar_t__ CAM_REQ_CMP ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  XPT_SCAN_LUN ; 
 int /*<<< orphan*/  FUNC2 (union ccb*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smartpqi_lunrescan_cb ; 
 int /*<<< orphan*/  FUNC4 (union ccb*) ; 
 union ccb* FUNC5 () ; 
 scalar_t__ FUNC6 (struct cam_path**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (union ccb*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct cam_path*,int) ; 

__attribute__((used)) static void FUNC9(struct pqisrc_softstate *softs, int target, 
			int lun)
{
	union ccb   *ccb = NULL;
	cam_status  status = 0;
	struct cam_path     *path = NULL;	

	FUNC1("IN\n");

	ccb = FUNC5();
	status = FUNC6(&path, NULL,
				FUNC3(softs->os_specific.sim), target, lun);
	if (status != CAM_REQ_CMP) {
		FUNC0("xpt_create_path status(%d) != CAM_REQ_CMP \n",
				 status);
		FUNC7(ccb);
		return;
	}

	FUNC2(ccb, sizeof(union ccb));
	FUNC8(&ccb->ccb_h, path, 5);
	ccb->ccb_h.func_code = XPT_SCAN_LUN;
	ccb->ccb_h.cbfcnp = smartpqi_lunrescan_cb;
	ccb->crcn.flags = CAM_FLAG_NONE;

	FUNC4(ccb);

	FUNC1("OUT\n");
}