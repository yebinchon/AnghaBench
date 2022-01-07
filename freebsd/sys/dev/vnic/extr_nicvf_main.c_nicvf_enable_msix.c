
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int msix_table_bar; } ;
struct TYPE_4__ {TYPE_1__ msix; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
struct nicvf {int num_vec; int msix_enabled; int dev; int * msix_table_res; } ;


 int ENXIO ;
 int NIC_VF_MSIX_VECTORS ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct pci_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,...) ;
 int pci_alloc_msix (int ,int*) ;

__attribute__((used)) static int
nicvf_enable_msix(struct nicvf *nic)
{
 struct pci_devinfo *dinfo;
 int rid, count;
 int ret;

 dinfo = device_get_ivars(nic->dev);
 rid = dinfo->cfg.msix.msix_table_bar;
 nic->msix_table_res =
     bus_alloc_resource_any(nic->dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (nic->msix_table_res == ((void*)0)) {
  device_printf(nic->dev,
      "Could not allocate memory for MSI-X table\n");
  return (ENXIO);
 }

 count = nic->num_vec = NIC_VF_MSIX_VECTORS;

 ret = pci_alloc_msix(nic->dev, &count);
 if ((ret != 0) || (count != nic->num_vec)) {
  device_printf(nic->dev,
      "Request for #%d msix vectors failed, error: %d\n",
      nic->num_vec, ret);
  return (ret);
 }

 nic->msix_enabled = 1;
 return (0);
}
