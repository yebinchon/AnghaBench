#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
typedef  void* u_int32_t ;
struct hpt_iop_request_set_config {int /*<<< orphan*/  max_host_request_size; int /*<<< orphan*/  vbus_id; void* iop_id; } ;
struct hpt_iop_request_get_config {int max_sg_count; int /*<<< orphan*/  request_size; int /*<<< orphan*/  max_devices; scalar_t__ max_requests; int /*<<< orphan*/  interface_version; int /*<<< orphan*/  firmware_version; } ;
struct hpt_iop_hba {int max_sg_count; int initialized; TYPE_1__* ops; scalar_t__ parent_dmat; scalar_t__ io_dmat; scalar_t__ srb_dmat; int /*<<< orphan*/  srb_dmamap; scalar_t__ uncached_ptr; scalar_t__ sim; int /*<<< orphan*/  path; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  irq_handle; int /*<<< orphan*/  ioctl_dev; int /*<<< orphan*/  pcidev; scalar_t__ max_requests; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_request_size; int /*<<< orphan*/  max_devices; int /*<<< orphan*/  interface_version; int /*<<< orphan*/  firmware_version; void* pciunit; } ;
struct TYPE_4__ {int /*<<< orphan*/  func_code; } ;
struct ccb_setasync {int event_enable; scalar_t__ callback_arg; int /*<<< orphan*/  callback; TYPE_2__ ccb_h; } ;
struct cam_devq {int dummy; } ;
typedef  int /*<<< orphan*/  set_config ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {scalar_t__ family; int /*<<< orphan*/  (* release_pci_res ) (struct hpt_iop_hba*) ;int /*<<< orphan*/  (* internal_memfree ) (struct hpt_iop_hba*) ;int /*<<< orphan*/  (* enable_intr ) (struct hpt_iop_hba*) ;scalar_t__ (* set_config ) (struct hpt_iop_hba*,struct hpt_iop_request_set_config*) ;scalar_t__ (* reset_comm ) (struct hpt_iop_hba*) ;scalar_t__ (* internal_memalloc ) (struct hpt_iop_hba*) ;scalar_t__ (* get_config ) (struct hpt_iop_hba*,struct hpt_iop_request_get_config*) ;scalar_t__ (* iop_wait_ready ) (struct hpt_iop_hba*,int) ;scalar_t__ (* alloc_pci_res ) (struct hpt_iop_hba*) ;} ;

/* Variables and functions */
 int AC_FOUND_DEVICE ; 
 int AC_LOST_DEVICE ; 
 int /*<<< orphan*/  BUS_DMA_ALLOCNOW ; 
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_WAITOK ; 
 scalar_t__ BUS_SPACE_MAXADDR ; 
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 scalar_t__ CAM_REQ_CMP ; 
 scalar_t__ CAM_SUCCESS ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int ENXIO ; 
 int /*<<< orphan*/  GID_WHEEL ; 
 int HPT_SRB_MAX_QUEUE_SIZE ; 
 int /*<<< orphan*/  HPT_SRB_MAX_REQ_SIZE ; 
 int HPT_SRB_MAX_SIZE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ MVFREY_BASED_IOP ; 
 scalar_t__ MV_BASED_IOP ; 
 int PAGE_SIZE ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  XPT_SASYNC_CB ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct hpt_iop_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct hpt_iop_hba*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC12 (struct hpt_iop_request_set_config*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hpt_iop_hba*,void*,int /*<<< orphan*/ *,scalar_t__,int,struct cam_devq*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 struct cam_devq* FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct cam_devq*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  driver_version ; 
 int /*<<< orphan*/  hptiop_action ; 
 int /*<<< orphan*/  hptiop_async ; 
 int /*<<< orphan*/  hptiop_cdevsw ; 
 int /*<<< orphan*/  FUNC21 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  hptiop_map_srb ; 
 int /*<<< orphan*/  hptiop_pci_intr ; 
 int /*<<< orphan*/  hptiop_poll ; 
 scalar_t__ FUNC22 (struct hpt_iop_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC31 (struct hpt_iop_hba*) ; 
 scalar_t__ FUNC32 (struct hpt_iop_hba*,int) ; 
 scalar_t__ FUNC33 (struct hpt_iop_hba*) ; 
 scalar_t__ FUNC34 (struct hpt_iop_hba*,struct hpt_iop_request_get_config*) ; 
 scalar_t__ FUNC35 (struct hpt_iop_hba*) ; 
 scalar_t__ FUNC36 (struct hpt_iop_hba*) ; 
 scalar_t__ FUNC37 (struct hpt_iop_hba*,struct hpt_iop_request_set_config*) ; 
 int /*<<< orphan*/  FUNC38 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC39 (struct hpt_iop_hba*) ; 
 int /*<<< orphan*/  FUNC40 (union ccb*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC42 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC43 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC46(device_t dev)
{
	struct hpt_iop_hba *hba = (struct hpt_iop_hba *)FUNC18(dev);
	struct hpt_iop_request_get_config  iop_config;
	struct hpt_iop_request_set_config  set_config;
	int rid = 0;
	struct cam_devq *devq;
	struct ccb_setasync ccb;
	u_int32_t unit = FUNC19(dev);

	FUNC20(dev, "%d RocketRAID 3xxx/4xxx controller driver %s\n",
			unit, driver_version);

	FUNC0(("hptiop: attach(%d, %d/%d/%d) ops=%p\n", unit,
		FUNC27(dev), FUNC29(dev),
		FUNC28(dev), hba->ops));

	FUNC26(dev);
	hba->pcidev = dev;
	hba->pciunit = unit;

	if (hba->ops->alloc_pci_res(hba))
		return ENXIO;

	if (hba->ops->iop_wait_ready(hba, 2000)) {
		FUNC20(dev, "adapter is not ready\n");
		goto release_pci_res;
	}

	FUNC25(&hba->lock, "hptioplock", NULL, MTX_DEF);

	if (FUNC2(FUNC8(dev),/* PCI parent */
			1,  /* alignment */
			0, /* boundary */
			BUS_SPACE_MAXADDR,  /* lowaddr */
			BUS_SPACE_MAXADDR,  /* highaddr */
			NULL, NULL,         /* filter, filterarg */
			BUS_SPACE_MAXSIZE_32BIT,    /* maxsize */
			BUS_SPACE_UNRESTRICTED, /* nsegments */
			BUS_SPACE_MAXSIZE_32BIT,    /* maxsegsize */
			0,      /* flags */
			NULL,   /* lockfunc */
			NULL,       /* lockfuncarg */
			&hba->parent_dmat   /* tag */))
	{
		FUNC20(dev, "alloc parent_dmat failed\n");
		goto release_pci_res;
	}

	if (hba->ops->family == MV_BASED_IOP) {
		if (hba->ops->internal_memalloc(hba)) {
			FUNC20(dev, "alloc srb_dmat failed\n");
			goto destroy_parent_tag;
		}
	}
	
	if (hba->ops->get_config(hba, &iop_config)) {
		FUNC20(dev, "get iop config failed.\n");
		goto get_config_failed;
	}

	hba->firmware_version = iop_config.firmware_version;
	hba->interface_version = iop_config.interface_version;
	hba->max_requests = iop_config.max_requests;
	hba->max_devices = iop_config.max_devices;
	hba->max_request_size = iop_config.request_size;
	hba->max_sg_count = iop_config.max_sg_count;

	if (hba->ops->family == MVFREY_BASED_IOP) {
		if (hba->ops->internal_memalloc(hba)) {
			FUNC20(dev, "alloc srb_dmat failed\n");
			goto destroy_parent_tag;
		}
		if (hba->ops->reset_comm(hba)) {
			FUNC20(dev, "reset comm failed\n");
			goto get_config_failed;
		}
	}

	if (FUNC2(hba->parent_dmat,/* parent */
			4,  /* alignment */
			BUS_SPACE_MAXADDR_32BIT+1, /* boundary */
			BUS_SPACE_MAXADDR,  /* lowaddr */
			BUS_SPACE_MAXADDR,  /* highaddr */
			NULL, NULL,         /* filter, filterarg */
			PAGE_SIZE * (hba->max_sg_count-1),  /* maxsize */
			hba->max_sg_count,  /* nsegments */
			0x20000,    /* maxsegsize */
			BUS_DMA_ALLOCNOW,       /* flags */
			busdma_lock_mutex,  /* lockfunc */
			&hba->lock,     /* lockfuncarg */
			&hba->io_dmat   /* tag */))
	{
		FUNC20(dev, "alloc io_dmat failed\n");
		goto get_config_failed;
	}

	if (FUNC2(hba->parent_dmat,/* parent */
			1,  /* alignment */
			0, /* boundary */
			BUS_SPACE_MAXADDR_32BIT,    /* lowaddr */
			BUS_SPACE_MAXADDR,  /* highaddr */
			NULL, NULL,         /* filter, filterarg */
			HPT_SRB_MAX_SIZE * HPT_SRB_MAX_QUEUE_SIZE + 0x20,
			1,  /* nsegments */
			BUS_SPACE_MAXSIZE_32BIT,    /* maxsegsize */
			0,      /* flags */
			NULL,   /* lockfunc */
			NULL,       /* lockfuncarg */
			&hba->srb_dmat  /* tag */))
	{
		FUNC20(dev, "alloc srb_dmat failed\n");
		goto destroy_io_dmat;
	}

	if (FUNC6(hba->srb_dmat, (void **)&hba->uncached_ptr,
			BUS_DMA_WAITOK | BUS_DMA_COHERENT,
			&hba->srb_dmamap) != 0)
	{
		FUNC20(dev, "srb bus_dmamem_alloc failed!\n");
		goto destroy_srb_dmat;
	}

	if (FUNC4(hba->srb_dmat,
			hba->srb_dmamap, hba->uncached_ptr,
			(HPT_SRB_MAX_SIZE * HPT_SRB_MAX_QUEUE_SIZE) + 0x20,
			hptiop_map_srb, hba, 0))
	{
		FUNC20(dev, "bus_dmamap_load failed!\n");
		goto srb_dmamem_free;
	}

	if ((devq = FUNC16(hba->max_requests - 1 )) == NULL) {
		FUNC20(dev, "cam_simq_alloc failed\n");
		goto srb_dmamap_unload;
	}

	hba->sim = FUNC13(hptiop_action, hptiop_poll, driver_name,
			hba, unit, &hba->lock, hba->max_requests - 1, 1, devq);
	if (!hba->sim) {
		FUNC20(dev, "cam_sim_alloc failed\n");
		FUNC17(devq);
		goto srb_dmamap_unload;
	}
	FUNC21(hba);
	if (FUNC42(hba->sim, dev, 0) != CAM_SUCCESS)
	{
		FUNC20(dev, "xpt_bus_register failed\n");
		goto free_cam_sim;
	}

	if (FUNC43(&hba->path, /*periph */ NULL,
			FUNC15(hba->sim), CAM_TARGET_WILDCARD,
			CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
		FUNC20(dev, "xpt_create_path failed\n");
		goto deregister_xpt_bus;
	}
	FUNC23(hba);

	FUNC12(&set_config, sizeof(set_config));
	set_config.iop_id = unit;
	set_config.vbus_id = FUNC15(hba->sim);
	set_config.max_host_request_size = HPT_SRB_MAX_REQ_SIZE;

	if (hba->ops->set_config(hba, &set_config)) {
		FUNC20(dev, "set iop config failed.\n");
		goto free_hba_path;
	}

	FUNC45(&ccb.ccb_h, hba->path, /*priority*/5);
	ccb.ccb_h.func_code = XPT_SASYNC_CB;
	ccb.event_enable = (AC_FOUND_DEVICE | AC_LOST_DEVICE);
	ccb.callback = hptiop_async;
	ccb.callback_arg = hba->sim;
	FUNC40((union ccb *)&ccb);

	rid = 0;
	if ((hba->irq_res = FUNC1(hba->pcidev, SYS_RES_IRQ,
			&rid, RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC20(dev, "allocate irq failed!\n");
		goto free_hba_path;
	}

	if (FUNC10(hba->pcidev, hba->irq_res, INTR_TYPE_CAM | INTR_MPSAFE,
				NULL, hptiop_pci_intr, hba, &hba->irq_handle))
	{
		FUNC20(dev, "allocate intr function failed!\n");
		goto free_irq_resource;
	}

	if (FUNC22(hba,
			IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK, 5000)) {
		FUNC20(dev, "fail to start background task\n");
		goto teartown_irq_resource;
	}

	hba->ops->enable_intr(hba);
	hba->initialized = 1;

	hba->ioctl_dev = FUNC24(&hptiop_cdevsw, unit,
				UID_ROOT, GID_WHEEL /*GID_OPERATOR*/,
				S_IRUSR | S_IWUSR, "%s%d", driver_name, unit);


	return 0;


teartown_irq_resource:
	FUNC11(dev, hba->irq_res, hba->irq_handle);

free_irq_resource:
	FUNC9(dev, SYS_RES_IRQ, 0, hba->irq_res);

	FUNC21(hba);
free_hba_path:
	FUNC44(hba->path);

deregister_xpt_bus:
	FUNC41(FUNC15(hba->sim));

free_cam_sim:
	FUNC14(hba->sim, /*free devq*/ TRUE);
	FUNC23(hba);

srb_dmamap_unload:
	if (hba->uncached_ptr)
		FUNC5(hba->srb_dmat, hba->srb_dmamap);

srb_dmamem_free:
	if (hba->uncached_ptr)
		FUNC7(hba->srb_dmat,
			hba->uncached_ptr, hba->srb_dmamap);

destroy_srb_dmat:
	if (hba->srb_dmat)
		FUNC3(hba->srb_dmat);

destroy_io_dmat:
	if (hba->io_dmat)
		FUNC3(hba->io_dmat);

get_config_failed:
	hba->ops->internal_memfree(hba);

destroy_parent_tag:
	if (hba->parent_dmat)
		FUNC3(hba->parent_dmat);

release_pci_res:
	if (hba->ops->release_pci_res)
		hba->ops->release_pci_res(hba);

	return ENXIO;
}