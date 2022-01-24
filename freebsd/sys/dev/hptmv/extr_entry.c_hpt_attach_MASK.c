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
struct TYPE_5__ {struct cam_sim* callback_arg; int /*<<< orphan*/  callback; int /*<<< orphan*/  event_enable; } ;
struct TYPE_4__ {int priority; int /*<<< orphan*/  index; } ;
struct TYPE_6__ {int /*<<< orphan*/  func_code; TYPE_1__ pinfo; } ;
union ccb {TYPE_2__ csa; TYPE_3__ ccb_h; int /*<<< orphan*/  path; int /*<<< orphan*/  lock; int /*<<< orphan*/  hpt_dev; int /*<<< orphan*/  hpt_intr; int /*<<< orphan*/ * hpt_irq; } ;
struct cam_sim {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  union ccb IAL_ADAPTER_T ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  CAM_UNQUEUED_INDEX ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  DRIVER_VERSION ; 
 int ENOMEM ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PROC_DIR_NAME ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (union ccb*,int) ; 
 struct cam_sim* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_sim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cam_sim*) ; 
 struct cam_devq* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_devq*) ; 
 union ccb* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (union ccb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hpt_action ; 
 int /*<<< orphan*/  hpt_async ; 
 int /*<<< orphan*/  hpt_intr ; 
 int /*<<< orphan*/  hpt_poll ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (union ccb*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (union ccb*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct cam_sim*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
	IAL_ADAPTER_T * pAdapter = FUNC10(dev);
	int rid;
	union ccb *ccb;
	struct cam_devq *devq;
	struct cam_sim *hpt_vsim;

	FUNC12(dev, "%s Version %s \n", DRIVER_NAME, DRIVER_VERSION);

	pAdapter->hpt_dev = dev;
	
	rid = FUNC15(pAdapter);
	if (rid)
		return rid;

	rid = 0;
	if ((pAdapter->hpt_irq = FUNC2(pAdapter->hpt_dev, SYS_RES_IRQ, &rid, RF_SHAREABLE | RF_ACTIVE)) == NULL)
	{
		FUNC14(("can't allocate interrupt\n"));
		return(ENXIO);
	}

	if (FUNC3(pAdapter->hpt_dev, pAdapter->hpt_irq,
				INTR_TYPE_CAM | INTR_MPSAFE,
				NULL, hpt_intr, pAdapter, &pAdapter->hpt_intr))
	{
		FUNC14(("can't set up interrupt\n"));
		FUNC13(pAdapter, M_DEVBUF);
		return(ENXIO);
	}


	if((ccb = (union ccb *)FUNC17(sizeof(*ccb), M_DEVBUF, M_WAITOK)) != (union ccb*)NULL)
	{
		FUNC4(ccb, sizeof(*ccb));
		ccb->ccb_h.pinfo.priority = 1;
		ccb->ccb_h.pinfo.index = CAM_UNQUEUED_INDEX;
	}
	else
	{
		return ENOMEM;
	}
	/*
	 * Create the device queue for our SIM(s).
	 */
	if((devq = FUNC8(8/*MAX_QUEUE_COMM*/)) == NULL)
	{
		FUNC0(("ENXIO\n"));
		return ENOMEM;
	}

	/*
	 * Construct our SIM entry
	 */
	hpt_vsim = FUNC5(hpt_action, hpt_poll, FUNC1(PROC_DIR_NAME),
			pAdapter, FUNC11(pAdapter->hpt_dev),
			&pAdapter->lock, 1, 8, devq);
	if (hpt_vsim == NULL) {
		FUNC9(devq);
		return ENOMEM;
	}

	FUNC18(&pAdapter->lock);
	if (FUNC22(hpt_vsim, dev, 0) != CAM_SUCCESS)
	{
		FUNC6(hpt_vsim, /*free devq*/ TRUE);
		FUNC19(&pAdapter->lock);
		hpt_vsim = NULL;
		return ENXIO;
	}

	if(FUNC23(&pAdapter->path, /*periph */ NULL,
			FUNC7(hpt_vsim), CAM_TARGET_WILDCARD,
			CAM_LUN_WILDCARD) != CAM_REQ_CMP)
	{
		FUNC21(FUNC7(hpt_vsim));
		FUNC6(hpt_vsim, /*free_devq*/TRUE);
		FUNC19(&pAdapter->lock);
		hpt_vsim = NULL;
		return ENXIO;
	}
	FUNC19(&pAdapter->lock);

	FUNC24(&(ccb->ccb_h), pAdapter->path, /*priority*/5);
	ccb->ccb_h.func_code = XPT_SASYNC_CB;
	ccb->csa.event_enable = AC_LOST_DEVICE;
	ccb->csa.callback = hpt_async;
	ccb->csa.callback_arg = hpt_vsim;
	FUNC20((union ccb *)ccb);
	FUNC13(ccb, M_DEVBUF);

	if (FUNC11(dev) == 0) {
		/* Start the work thread.  XXX */
		FUNC16();
	}

	return 0;
}