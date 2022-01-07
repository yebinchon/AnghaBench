
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ nsze; int flbas; int nlbaf; int noiob; } ;
struct nvme_namespace {int id; int boundary; TYPE_4__* cdev; int flags; TYPE_1__ data; int lock; struct nvme_controller* ctrlr; } ;
struct TYPE_6__ {int* vs; int vwc; } ;
struct nvme_controller {int min_page_size; int dev; TYPE_2__ cdata; } ;
struct nvme_completion_poll_status {int cpl; scalar_t__ done; } ;
struct make_dev_args {int mda_unit; int mda_mode; struct nvme_namespace* mda_si_drv1; int * mda_devsw; } ;
struct TYPE_7__ {int si_flags; } ;


 int ENXIO ;
 int MTX_DEF ;
 int NVME_CTRLR_DATA_VWC_PRESENT_MASK ;
 int NVME_CTRLR_DATA_VWC_PRESENT_SHIFT ;
 int NVME_MAX_NAMESPACES ;
 int NVME_NS_DATA_FLBAS_FORMAT_MASK ;
 int NVME_NS_DATA_FLBAS_FORMAT_SHIFT ;
 int NVME_NS_DEALLOCATE_SUPPORTED ;
 int NVME_NS_FLUSH_SUPPORTED ;
 int SI_UNMAPPED ;
 int device_get_unit (int ) ;
 int make_dev_args_init (struct make_dev_args*) ;
 int make_dev_s (struct make_dev_args*,TYPE_4__**,char*,int,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_initialized (int *) ;
 scalar_t__ nvme_completion_is_error (int *) ;
 int nvme_completion_poll (struct nvme_completion_poll_status*) ;
 int nvme_completion_poll_cb ;
 int nvme_ctrlr_cmd_identify_namespace (struct nvme_controller*,int,TYPE_1__*,int ,struct nvme_completion_poll_status*) ;
 scalar_t__ nvme_ctrlr_has_dataset_mgmt (TYPE_2__*) ;
 int nvme_namespace_data_swapbytes (TYPE_1__*) ;
 int nvme_ns_cdevsw ;
 int nvme_ns_get_sector_size (struct nvme_namespace*) ;
 int nvme_printf (struct nvme_controller*,char*) ;
 int pci_get_devid (int ) ;
 int printf (char*,int,int) ;

int
nvme_ns_construct(struct nvme_namespace *ns, uint32_t id,
    struct nvme_controller *ctrlr)
{
 struct make_dev_args md_args;
 struct nvme_completion_poll_status status;
 int res;
 int unit;
 uint8_t flbas_fmt;
 uint8_t vwc_present;

 ns->ctrlr = ctrlr;
 ns->id = id;
 if (!mtx_initialized(&ns->lock))
  mtx_init(&ns->lock, "nvme ns lock", ((void*)0), MTX_DEF);

 status.done = 0;
 nvme_ctrlr_cmd_identify_namespace(ctrlr, id, &ns->data,
     nvme_completion_poll_cb, &status);
 nvme_completion_poll(&status);
 if (nvme_completion_is_error(&status.cpl)) {
  nvme_printf(ctrlr, "nvme_identify_namespace failed\n");
  return (ENXIO);
 }


 nvme_namespace_data_swapbytes(&ns->data);







 if (ns->data.nsze == 0)
  return (ENXIO);

 flbas_fmt = (ns->data.flbas >> NVME_NS_DATA_FLBAS_FORMAT_SHIFT) &
  NVME_NS_DATA_FLBAS_FORMAT_MASK;




 if (flbas_fmt > ns->data.nlbaf) {
  printf("lba format %d exceeds number supported (%d)\n",
      flbas_fmt, ns->data.nlbaf + 1);
  return (ENXIO);
 }






 switch (pci_get_devid(ctrlr->dev)) {
 case 0x09538086:
 case 0x0a538086:
 case 0x0a548086:
 case 0x0a558086:
  if (ctrlr->cdata.vs[3] != 0)
   ns->boundary =
       (1 << ctrlr->cdata.vs[3]) * ctrlr->min_page_size;
  else
   ns->boundary = 0;
  break;
 default:
  ns->boundary = ns->data.noiob * nvme_ns_get_sector_size(ns);
  break;
 }

 if (nvme_ctrlr_has_dataset_mgmt(&ctrlr->cdata))
  ns->flags |= NVME_NS_DEALLOCATE_SUPPORTED;

 vwc_present = (ctrlr->cdata.vwc >> NVME_CTRLR_DATA_VWC_PRESENT_SHIFT) &
  NVME_CTRLR_DATA_VWC_PRESENT_MASK;
 if (vwc_present)
  ns->flags |= NVME_NS_FLUSH_SUPPORTED;





 if (ns->cdev != ((void*)0))
  return (0);





 unit = device_get_unit(ctrlr->dev) * NVME_MAX_NAMESPACES + ns->id - 1;

 make_dev_args_init(&md_args);
 md_args.mda_devsw = &nvme_ns_cdevsw;
 md_args.mda_unit = unit;
 md_args.mda_mode = 0600;
 md_args.mda_si_drv1 = ns;
 res = make_dev_s(&md_args, &ns->cdev, "nvme%dns%d",
     device_get_unit(ctrlr->dev), ns->id);
 if (res != 0)
  return (ENXIO);

 ns->cdev->si_flags |= SI_UNMAPPED;

 return (0);
}
