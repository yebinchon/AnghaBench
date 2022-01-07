
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {scalar_t__ bar0_res; int bar0_rid; int pcidev; } ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void hptiop_release_pci_res_itl(struct hpt_iop_hba *hba)
{
 if (hba->bar0_res)
  bus_release_resource(hba->pcidev, SYS_RES_MEMORY,
   hba->bar0_rid, hba->bar0_res);
}
