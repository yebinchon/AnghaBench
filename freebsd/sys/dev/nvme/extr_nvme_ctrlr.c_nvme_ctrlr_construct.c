
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct nvme_controller {int min_page_size; int ready_timeout_in_ms; int timeout_period; int enable_aborts; int cdev; int is_failed; int fail_req; int fail_req_task; int reset_task; scalar_t__ notification_sent; scalar_t__ is_initialized; scalar_t__ is_resetting; int taskqueue; int max_xfer_size; scalar_t__ dstrd; scalar_t__ domain; int lock; int dev; } ;
struct make_dev_args {int mda_mode; void* mda_si_drv1; int mda_unit; int mda_gid; int mda_uid; int * mda_devsw; } ;
typedef int device_t ;


 int ENXIO ;
 int FALSE ;
 int GID_WHEEL ;
 int MTX_DEF ;
 int M_WAITOK ;
 scalar_t__ NVME_CAP_HI_DSTRD (int) ;
 int NVME_CAP_HI_MPSMIN (int) ;
 int NVME_CAP_LO_TO (int) ;
 int NVME_DEFAULT_RETRY_COUNT ;
 int NVME_DEFAULT_TIMEOUT_PERIOD ;
 int NVME_MAX_TIMEOUT_PERIOD ;
 int NVME_MAX_XFER_SIZE ;
 int NVME_MIN_TIMEOUT_PERIOD ;
 int PI_DISK ;
 int STAILQ_INIT (int *) ;
 int TASK_INIT (int *,int ,int ,struct nvme_controller*) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int UID_ROOT ;
 scalar_t__ bus_get_domain (int ,scalar_t__*) ;
 int device_get_unit (int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,int *,char*,int ) ;
 int max (int,int ) ;
 int min (int,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nvme_ctrlr_cdevsw ;
 scalar_t__ nvme_ctrlr_construct_admin_qpair (struct nvme_controller*) ;
 int nvme_ctrlr_fail_req_task ;
 int nvme_ctrlr_reset_task ;
 int nvme_mmio_read_4 (struct nvme_controller*,int) ;
 int nvme_retry_count ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*) ;
 int taskqueue_thread_enqueue ;

int
nvme_ctrlr_construct(struct nvme_controller *ctrlr, device_t dev)
{
 struct make_dev_args md_args;
 uint32_t cap_lo;
 uint32_t cap_hi;
 uint32_t to;
 uint8_t mpsmin;
 int status, timeout_period;

 ctrlr->dev = dev;

 mtx_init(&ctrlr->lock, "nvme ctrlr lock", ((void*)0), MTX_DEF);
 if (bus_get_domain(dev, &ctrlr->domain) != 0)
  ctrlr->domain = 0;

 cap_hi = nvme_mmio_read_4(ctrlr, cap_hi);
 ctrlr->dstrd = NVME_CAP_HI_DSTRD(cap_hi) + 2;

 mpsmin = NVME_CAP_HI_MPSMIN(cap_hi);
 ctrlr->min_page_size = 1 << (12 + mpsmin);


 cap_lo = nvme_mmio_read_4(ctrlr, cap_lo);
 to = NVME_CAP_LO_TO(cap_lo) + 1;
 ctrlr->ready_timeout_in_ms = to * 500;

 timeout_period = NVME_DEFAULT_TIMEOUT_PERIOD;
 TUNABLE_INT_FETCH("hw.nvme.timeout_period", &timeout_period);
 timeout_period = min(timeout_period, NVME_MAX_TIMEOUT_PERIOD);
 timeout_period = max(timeout_period, NVME_MIN_TIMEOUT_PERIOD);
 ctrlr->timeout_period = timeout_period;

 nvme_retry_count = NVME_DEFAULT_RETRY_COUNT;
 TUNABLE_INT_FETCH("hw.nvme.retry_count", &nvme_retry_count);

 ctrlr->enable_aborts = 0;
 TUNABLE_INT_FETCH("hw.nvme.enable_aborts", &ctrlr->enable_aborts);

 ctrlr->max_xfer_size = NVME_MAX_XFER_SIZE;
 if (nvme_ctrlr_construct_admin_qpair(ctrlr) != 0)
  return (ENXIO);

 ctrlr->taskqueue = taskqueue_create("nvme_taskq", M_WAITOK,
     taskqueue_thread_enqueue, &ctrlr->taskqueue);
 taskqueue_start_threads(&ctrlr->taskqueue, 1, PI_DISK, "nvme taskq");

 ctrlr->is_resetting = 0;
 ctrlr->is_initialized = 0;
 ctrlr->notification_sent = 0;
 TASK_INIT(&ctrlr->reset_task, 0, nvme_ctrlr_reset_task, ctrlr);
 TASK_INIT(&ctrlr->fail_req_task, 0, nvme_ctrlr_fail_req_task, ctrlr);
 STAILQ_INIT(&ctrlr->fail_req);
 ctrlr->is_failed = FALSE;

 make_dev_args_init(&md_args);
 md_args.mda_devsw = &nvme_ctrlr_cdevsw;
 md_args.mda_uid = UID_ROOT;
 md_args.mda_gid = GID_WHEEL;
 md_args.mda_mode = 0600;
 md_args.mda_unit = device_get_unit(dev);
 md_args.mda_si_drv1 = (void *)ctrlr;
 status = make_dev_s(&md_args, &ctrlr->cdev, "nvme%d",
     device_get_unit(dev));
 if (status != 0)
  return (ENXIO);

 return (0);
}
