
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hpt_iopmu_itl {int dummy; } ;
struct TYPE_3__ {struct hpt_iopmu_itl* mu; } ;
struct TYPE_4__ {TYPE_1__ itl; } ;
struct hpt_iop_hba {int bar0_rid; int pcidev; int * bar0_res; TYPE_2__ u; int bar0h; int bar0t; } ;


 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 scalar_t__ rman_get_virtual (int *) ;

__attribute__((used)) static int hptiop_alloc_pci_res_itl(struct hpt_iop_hba *hba)
{
 hba->bar0_rid = 0x10;
 hba->bar0_res = bus_alloc_resource_any(hba->pcidev,
   SYS_RES_MEMORY, &hba->bar0_rid, RF_ACTIVE);

 if (hba->bar0_res == ((void*)0)) {
  device_printf(hba->pcidev,
   "failed to get iop base adrress.\n");
  return -1;
 }
 hba->bar0t = rman_get_bustag(hba->bar0_res);
 hba->bar0h = rman_get_bushandle(hba->bar0_res);
 hba->u.itl.mu = (struct hpt_iopmu_itl *)
    rman_get_virtual(hba->bar0_res);

 if (!hba->u.itl.mu) {
  bus_release_resource(hba->pcidev, SYS_RES_MEMORY,
     hba->bar0_rid, hba->bar0_res);
  device_printf(hba->pcidev, "alloc mem res failed\n");
  return -1;
 }

 return 0;
}
