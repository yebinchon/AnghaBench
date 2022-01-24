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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct nvme_controller {int min_page_size; int ready_timeout_in_ms; int timeout_period; int enable_aborts; int /*<<< orphan*/  cdev; int /*<<< orphan*/  is_failed; int /*<<< orphan*/  fail_req; int /*<<< orphan*/  fail_req_task; int /*<<< orphan*/  reset_task; scalar_t__ notification_sent; scalar_t__ is_initialized; scalar_t__ is_resetting; int /*<<< orphan*/  taskqueue; int /*<<< orphan*/  max_xfer_size; scalar_t__ dstrd; scalar_t__ domain; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct make_dev_args {int mda_mode; void* mda_si_drv1; int /*<<< orphan*/  mda_unit; int /*<<< orphan*/  mda_gid; int /*<<< orphan*/  mda_uid; int /*<<< orphan*/ * mda_devsw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int NVME_DEFAULT_RETRY_COUNT ; 
 int NVME_DEFAULT_TIMEOUT_PERIOD ; 
 int /*<<< orphan*/  NVME_MAX_TIMEOUT_PERIOD ; 
 int /*<<< orphan*/  NVME_MAX_XFER_SIZE ; 
 int /*<<< orphan*/  NVME_MIN_TIMEOUT_PERIOD ; 
 int /*<<< orphan*/  PI_DISK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvme_controller*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct make_dev_args*) ; 
 int FUNC9 (struct make_dev_args*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_ctrlr_cdevsw ; 
 scalar_t__ FUNC13 (struct nvme_controller*) ; 
 int /*<<< orphan*/  nvme_ctrlr_fail_req_task ; 
 int /*<<< orphan*/  nvme_ctrlr_reset_task ; 
 int FUNC14 (struct nvme_controller*,int) ; 
 int nvme_retry_count ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

int
FUNC17(struct nvme_controller *ctrlr, device_t dev)
{
	struct make_dev_args	md_args;
	uint32_t	cap_lo;
	uint32_t	cap_hi;
	uint32_t	to;
	uint8_t		mpsmin;
	int		status, timeout_period;

	ctrlr->dev = dev;

	FUNC12(&ctrlr->lock, "nvme ctrlr lock", NULL, MTX_DEF);
	if (FUNC6(dev, &ctrlr->domain) != 0)
		ctrlr->domain = 0;

	cap_hi = FUNC14(ctrlr, cap_hi);
	ctrlr->dstrd = FUNC0(cap_hi) + 2;

	mpsmin = FUNC1(cap_hi);
	ctrlr->min_page_size = 1 << (12 + mpsmin);

	/* Get ready timeout value from controller, in units of 500ms. */
	cap_lo = FUNC14(ctrlr, cap_lo);
	to = FUNC2(cap_lo) + 1;
	ctrlr->ready_timeout_in_ms = to * 500;

	timeout_period = NVME_DEFAULT_TIMEOUT_PERIOD;
	FUNC5("hw.nvme.timeout_period", &timeout_period);
	timeout_period = FUNC11(timeout_period, NVME_MAX_TIMEOUT_PERIOD);
	timeout_period = FUNC10(timeout_period, NVME_MIN_TIMEOUT_PERIOD);
	ctrlr->timeout_period = timeout_period;

	nvme_retry_count = NVME_DEFAULT_RETRY_COUNT;
	FUNC5("hw.nvme.retry_count", &nvme_retry_count);

	ctrlr->enable_aborts = 0;
	FUNC5("hw.nvme.enable_aborts", &ctrlr->enable_aborts);

	ctrlr->max_xfer_size = NVME_MAX_XFER_SIZE;
	if (FUNC13(ctrlr) != 0)
		return (ENXIO);

	ctrlr->taskqueue = FUNC15("nvme_taskq", M_WAITOK,
	    taskqueue_thread_enqueue, &ctrlr->taskqueue);
	FUNC16(&ctrlr->taskqueue, 1, PI_DISK, "nvme taskq");

	ctrlr->is_resetting = 0;
	ctrlr->is_initialized = 0;
	ctrlr->notification_sent = 0;
	FUNC4(&ctrlr->reset_task, 0, nvme_ctrlr_reset_task, ctrlr);
	FUNC4(&ctrlr->fail_req_task, 0, nvme_ctrlr_fail_req_task, ctrlr);
	FUNC3(&ctrlr->fail_req);
	ctrlr->is_failed = FALSE;

	FUNC8(&md_args);
	md_args.mda_devsw = &nvme_ctrlr_cdevsw;
	md_args.mda_uid = UID_ROOT;
	md_args.mda_gid = GID_WHEEL;
	md_args.mda_mode = 0600;
	md_args.mda_unit = FUNC7(dev);
	md_args.mda_si_drv1 = (void *)ctrlr;
	status = FUNC9(&md_args, &ctrlr->cdev, "nvme%d",
	    FUNC7(dev));
	if (status != 0)
		return (ENXIO);

	return (0);
}