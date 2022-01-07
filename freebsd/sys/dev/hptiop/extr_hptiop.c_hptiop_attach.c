
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef void* u_int32_t ;
struct hpt_iop_request_set_config {int max_host_request_size; int vbus_id; void* iop_id; } ;
struct hpt_iop_request_get_config {int max_sg_count; int request_size; int max_devices; scalar_t__ max_requests; int interface_version; int firmware_version; } ;
struct hpt_iop_hba {int max_sg_count; int initialized; TYPE_1__* ops; scalar_t__ parent_dmat; scalar_t__ io_dmat; scalar_t__ srb_dmat; int srb_dmamap; scalar_t__ uncached_ptr; scalar_t__ sim; int path; int * irq_res; int irq_handle; int ioctl_dev; int pcidev; scalar_t__ max_requests; int lock; int max_request_size; int max_devices; int interface_version; int firmware_version; void* pciunit; } ;
struct TYPE_4__ {int func_code; } ;
struct ccb_setasync {int event_enable; scalar_t__ callback_arg; int callback; TYPE_2__ ccb_h; } ;
struct cam_devq {int dummy; } ;
typedef int set_config ;
typedef int device_t ;
struct TYPE_3__ {scalar_t__ family; int (* release_pci_res ) (struct hpt_iop_hba*) ;int (* internal_memfree ) (struct hpt_iop_hba*) ;int (* enable_intr ) (struct hpt_iop_hba*) ;scalar_t__ (* set_config ) (struct hpt_iop_hba*,struct hpt_iop_request_set_config*) ;scalar_t__ (* reset_comm ) (struct hpt_iop_hba*) ;scalar_t__ (* internal_memalloc ) (struct hpt_iop_hba*) ;scalar_t__ (* get_config ) (struct hpt_iop_hba*,struct hpt_iop_request_get_config*) ;scalar_t__ (* iop_wait_ready ) (struct hpt_iop_hba*,int) ;scalar_t__ (* alloc_pci_res ) (struct hpt_iop_hba*) ;} ;


 int AC_FOUND_DEVICE ;
 int AC_LOST_DEVICE ;
 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_COHERENT ;
 int BUS_DMA_WAITOK ;
 scalar_t__ BUS_SPACE_MAXADDR ;
 scalar_t__ BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int ENXIO ;
 int GID_WHEEL ;
 int HPT_SRB_MAX_QUEUE_SIZE ;
 int HPT_SRB_MAX_REQ_SIZE ;
 int HPT_SRB_MAX_SIZE ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK ;
 int KdPrint (char*) ;
 int MTX_DEF ;
 scalar_t__ MVFREY_BASED_IOP ;
 scalar_t__ MV_BASED_IOP ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TRUE ;
 int UID_ROOT ;
 int XPT_SASYNC_CB ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,int *,int *,int,int,int,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 scalar_t__ bus_dmamap_load (scalar_t__,int ,scalar_t__,int,int ,struct hpt_iop_hba*,int ) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 scalar_t__ bus_dmamem_alloc (scalar_t__,void**,int,int *) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 scalar_t__ bus_get_dma_tag (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,struct hpt_iop_hba*,int *) ;
 int bus_teardown_intr (int ,int *,int ) ;
 int * busdma_lock_mutex ;
 int bzero (struct hpt_iop_request_set_config*,int) ;
 scalar_t__ cam_sim_alloc (int ,int ,int ,struct hpt_iop_hba*,void*,int *,scalar_t__,int,struct cam_devq*) ;
 int cam_sim_free (scalar_t__,int ) ;
 int cam_sim_path (scalar_t__) ;
 struct cam_devq* cam_simq_alloc (scalar_t__) ;
 int cam_simq_free (struct cam_devq*) ;
 scalar_t__ device_get_softc (int ) ;
 void* device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int driver_name ;
 int driver_version ;
 int hptiop_action ;
 int hptiop_async ;
 int hptiop_cdevsw ;
 int hptiop_lock_adapter (struct hpt_iop_hba*) ;
 int hptiop_map_srb ;
 int hptiop_pci_intr ;
 int hptiop_poll ;
 scalar_t__ hptiop_send_sync_msg (struct hpt_iop_hba*,int ,int) ;
 int hptiop_unlock_adapter (struct hpt_iop_hba*) ;
 int make_dev (int *,void*,int ,int ,int,char*,int ,void*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_enable_busmaster (int ) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 scalar_t__ stub1 (struct hpt_iop_hba*) ;
 int stub10 (struct hpt_iop_hba*) ;
 scalar_t__ stub2 (struct hpt_iop_hba*,int) ;
 scalar_t__ stub3 (struct hpt_iop_hba*) ;
 scalar_t__ stub4 (struct hpt_iop_hba*,struct hpt_iop_request_get_config*) ;
 scalar_t__ stub5 (struct hpt_iop_hba*) ;
 scalar_t__ stub6 (struct hpt_iop_hba*) ;
 scalar_t__ stub7 (struct hpt_iop_hba*,struct hpt_iop_request_set_config*) ;
 int stub8 (struct hpt_iop_hba*) ;
 int stub9 (struct hpt_iop_hba*) ;
 int xpt_action (union ccb*) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (scalar_t__,int ,int ) ;
 scalar_t__ xpt_create_path (int *,int *,int ,int ,int ) ;
 int xpt_free_path (int ) ;
 int xpt_setup_ccb (TYPE_2__*,int ,int) ;

__attribute__((used)) static int hptiop_attach(device_t dev)
{
 struct hpt_iop_hba *hba = (struct hpt_iop_hba *)device_get_softc(dev);
 struct hpt_iop_request_get_config iop_config;
 struct hpt_iop_request_set_config set_config;
 int rid = 0;
 struct cam_devq *devq;
 struct ccb_setasync ccb;
 u_int32_t unit = device_get_unit(dev);

 device_printf(dev, "%d RocketRAID 3xxx/4xxx controller driver %s\n",
   unit, driver_version);

 KdPrint(("hptiop: attach(%d, %d/%d/%d) ops=%p\n", unit,
  pci_get_bus(dev), pci_get_slot(dev),
  pci_get_function(dev), hba->ops));

 pci_enable_busmaster(dev);
 hba->pcidev = dev;
 hba->pciunit = unit;

 if (hba->ops->alloc_pci_res(hba))
  return ENXIO;

 if (hba->ops->iop_wait_ready(hba, 2000)) {
  device_printf(dev, "adapter is not ready\n");
  goto release_pci_res;
 }

 mtx_init(&hba->lock, "hptioplock", ((void*)0), MTX_DEF);

 if (bus_dma_tag_create(bus_get_dma_tag(dev),
   1,
   0,
   BUS_SPACE_MAXADDR,
   BUS_SPACE_MAXADDR,
   ((void*)0), ((void*)0),
   BUS_SPACE_MAXSIZE_32BIT,
   BUS_SPACE_UNRESTRICTED,
   BUS_SPACE_MAXSIZE_32BIT,
   0,
   ((void*)0),
   ((void*)0),
   &hba->parent_dmat ))
 {
  device_printf(dev, "alloc parent_dmat failed\n");
  goto release_pci_res;
 }

 if (hba->ops->family == MV_BASED_IOP) {
  if (hba->ops->internal_memalloc(hba)) {
   device_printf(dev, "alloc srb_dmat failed\n");
   goto destroy_parent_tag;
  }
 }

 if (hba->ops->get_config(hba, &iop_config)) {
  device_printf(dev, "get iop config failed.\n");
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
   device_printf(dev, "alloc srb_dmat failed\n");
   goto destroy_parent_tag;
  }
  if (hba->ops->reset_comm(hba)) {
   device_printf(dev, "reset comm failed\n");
   goto get_config_failed;
  }
 }

 if (bus_dma_tag_create(hba->parent_dmat,
   4,
   BUS_SPACE_MAXADDR_32BIT+1,
   BUS_SPACE_MAXADDR,
   BUS_SPACE_MAXADDR,
   ((void*)0), ((void*)0),
   PAGE_SIZE * (hba->max_sg_count-1),
   hba->max_sg_count,
   0x20000,
   BUS_DMA_ALLOCNOW,
   busdma_lock_mutex,
   &hba->lock,
   &hba->io_dmat ))
 {
  device_printf(dev, "alloc io_dmat failed\n");
  goto get_config_failed;
 }

 if (bus_dma_tag_create(hba->parent_dmat,
   1,
   0,
   BUS_SPACE_MAXADDR_32BIT,
   BUS_SPACE_MAXADDR,
   ((void*)0), ((void*)0),
   HPT_SRB_MAX_SIZE * HPT_SRB_MAX_QUEUE_SIZE + 0x20,
   1,
   BUS_SPACE_MAXSIZE_32BIT,
   0,
   ((void*)0),
   ((void*)0),
   &hba->srb_dmat ))
 {
  device_printf(dev, "alloc srb_dmat failed\n");
  goto destroy_io_dmat;
 }

 if (bus_dmamem_alloc(hba->srb_dmat, (void **)&hba->uncached_ptr,
   BUS_DMA_WAITOK | BUS_DMA_COHERENT,
   &hba->srb_dmamap) != 0)
 {
  device_printf(dev, "srb bus_dmamem_alloc failed!\n");
  goto destroy_srb_dmat;
 }

 if (bus_dmamap_load(hba->srb_dmat,
   hba->srb_dmamap, hba->uncached_ptr,
   (HPT_SRB_MAX_SIZE * HPT_SRB_MAX_QUEUE_SIZE) + 0x20,
   hptiop_map_srb, hba, 0))
 {
  device_printf(dev, "bus_dmamap_load failed!\n");
  goto srb_dmamem_free;
 }

 if ((devq = cam_simq_alloc(hba->max_requests - 1 )) == ((void*)0)) {
  device_printf(dev, "cam_simq_alloc failed\n");
  goto srb_dmamap_unload;
 }

 hba->sim = cam_sim_alloc(hptiop_action, hptiop_poll, driver_name,
   hba, unit, &hba->lock, hba->max_requests - 1, 1, devq);
 if (!hba->sim) {
  device_printf(dev, "cam_sim_alloc failed\n");
  cam_simq_free(devq);
  goto srb_dmamap_unload;
 }
 hptiop_lock_adapter(hba);
 if (xpt_bus_register(hba->sim, dev, 0) != CAM_SUCCESS)
 {
  device_printf(dev, "xpt_bus_register failed\n");
  goto free_cam_sim;
 }

 if (xpt_create_path(&hba->path, ((void*)0),
   cam_sim_path(hba->sim), CAM_TARGET_WILDCARD,
   CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  device_printf(dev, "xpt_create_path failed\n");
  goto deregister_xpt_bus;
 }
 hptiop_unlock_adapter(hba);

 bzero(&set_config, sizeof(set_config));
 set_config.iop_id = unit;
 set_config.vbus_id = cam_sim_path(hba->sim);
 set_config.max_host_request_size = HPT_SRB_MAX_REQ_SIZE;

 if (hba->ops->set_config(hba, &set_config)) {
  device_printf(dev, "set iop config failed.\n");
  goto free_hba_path;
 }

 xpt_setup_ccb(&ccb.ccb_h, hba->path, 5);
 ccb.ccb_h.func_code = XPT_SASYNC_CB;
 ccb.event_enable = (AC_FOUND_DEVICE | AC_LOST_DEVICE);
 ccb.callback = hptiop_async;
 ccb.callback_arg = hba->sim;
 xpt_action((union ccb *)&ccb);

 rid = 0;
 if ((hba->irq_res = bus_alloc_resource_any(hba->pcidev, SYS_RES_IRQ,
   &rid, RF_SHAREABLE | RF_ACTIVE)) == ((void*)0)) {
  device_printf(dev, "allocate irq failed!\n");
  goto free_hba_path;
 }

 if (bus_setup_intr(hba->pcidev, hba->irq_res, INTR_TYPE_CAM | INTR_MPSAFE,
    ((void*)0), hptiop_pci_intr, hba, &hba->irq_handle))
 {
  device_printf(dev, "allocate intr function failed!\n");
  goto free_irq_resource;
 }

 if (hptiop_send_sync_msg(hba,
   IOPMU_INBOUND_MSG0_START_BACKGROUND_TASK, 5000)) {
  device_printf(dev, "fail to start background task\n");
  goto teartown_irq_resource;
 }

 hba->ops->enable_intr(hba);
 hba->initialized = 1;

 hba->ioctl_dev = make_dev(&hptiop_cdevsw, unit,
    UID_ROOT, GID_WHEEL ,
    S_IRUSR | S_IWUSR, "%s%d", driver_name, unit);


 return 0;


teartown_irq_resource:
 bus_teardown_intr(dev, hba->irq_res, hba->irq_handle);

free_irq_resource:
 bus_release_resource(dev, SYS_RES_IRQ, 0, hba->irq_res);

 hptiop_lock_adapter(hba);
free_hba_path:
 xpt_free_path(hba->path);

deregister_xpt_bus:
 xpt_bus_deregister(cam_sim_path(hba->sim));

free_cam_sim:
 cam_sim_free(hba->sim, TRUE);
 hptiop_unlock_adapter(hba);

srb_dmamap_unload:
 if (hba->uncached_ptr)
  bus_dmamap_unload(hba->srb_dmat, hba->srb_dmamap);

srb_dmamem_free:
 if (hba->uncached_ptr)
  bus_dmamem_free(hba->srb_dmat,
   hba->uncached_ptr, hba->srb_dmamap);

destroy_srb_dmat:
 if (hba->srb_dmat)
  bus_dma_tag_destroy(hba->srb_dmat);

destroy_io_dmat:
 if (hba->io_dmat)
  bus_dma_tag_destroy(hba->io_dmat);

get_config_failed:
 hba->ops->internal_memfree(hba);

destroy_parent_tag:
 if (hba->parent_dmat)
  bus_dma_tag_destroy(hba->parent_dmat);

release_pci_res:
 if (hba->ops->release_pci_res)
  hba->ops->release_pci_res(hba);

 return ENXIO;
}
