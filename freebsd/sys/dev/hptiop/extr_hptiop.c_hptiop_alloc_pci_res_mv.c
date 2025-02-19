
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpt_iopmv_regs {int dummy; } ;
struct hpt_iopmu_mv {int dummy; } ;
struct TYPE_3__ {struct hpt_iopmu_mv* mu; struct hpt_iopmv_regs* regs; } ;
struct TYPE_4__ {TYPE_1__ mv; } ;
struct hpt_iop_hba {int bar0_rid; int bar2_rid; int pcidev; int * bar2_res; int * bar0_res; TYPE_2__ u; void* bar2h; void* bar2t; void* bar0h; void* bar0t; } ;


 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int device_printf (int ,char*) ;
 void* rman_get_bushandle (int *) ;
 void* rman_get_bustag (int *) ;
 scalar_t__ rman_get_virtual (int *) ;

__attribute__((used)) static int hptiop_alloc_pci_res_mv(struct hpt_iop_hba *hba)
{
 hba->bar0_rid = 0x10;
 hba->bar0_res = bus_alloc_resource_any(hba->pcidev,
   SYS_RES_MEMORY, &hba->bar0_rid, RF_ACTIVE);

 if (hba->bar0_res == ((void*)0)) {
  device_printf(hba->pcidev, "failed to get iop bar0.\n");
  return -1;
 }
 hba->bar0t = rman_get_bustag(hba->bar0_res);
 hba->bar0h = rman_get_bushandle(hba->bar0_res);
 hba->u.mv.regs = (struct hpt_iopmv_regs *)
    rman_get_virtual(hba->bar0_res);

 if (!hba->u.mv.regs) {
  bus_release_resource(hba->pcidev, SYS_RES_MEMORY,
     hba->bar0_rid, hba->bar0_res);
  device_printf(hba->pcidev, "alloc bar0 mem res failed\n");
  return -1;
 }

 hba->bar2_rid = 0x18;
 hba->bar2_res = bus_alloc_resource_any(hba->pcidev,
   SYS_RES_MEMORY, &hba->bar2_rid, RF_ACTIVE);

 if (hba->bar2_res == ((void*)0)) {
  bus_release_resource(hba->pcidev, SYS_RES_MEMORY,
     hba->bar0_rid, hba->bar0_res);
  device_printf(hba->pcidev, "failed to get iop bar2.\n");
  return -1;
 }

 hba->bar2t = rman_get_bustag(hba->bar2_res);
 hba->bar2h = rman_get_bushandle(hba->bar2_res);
 hba->u.mv.mu = (struct hpt_iopmu_mv *)rman_get_virtual(hba->bar2_res);

 if (!hba->u.mv.mu) {
  bus_release_resource(hba->pcidev, SYS_RES_MEMORY,
     hba->bar0_rid, hba->bar0_res);
  bus_release_resource(hba->pcidev, SYS_RES_MEMORY,
     hba->bar2_rid, hba->bar2_res);
  device_printf(hba->pcidev, "alloc mem bar2 res failed\n");
  return -1;
 }

 return 0;
}
