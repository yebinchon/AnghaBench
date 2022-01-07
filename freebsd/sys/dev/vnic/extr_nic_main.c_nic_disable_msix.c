
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicpf {int msix_table_res; int dev; scalar_t__ num_vec; scalar_t__ msix_enabled; } ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int pci_release_msi (int ) ;
 int rman_get_rid (int ) ;

__attribute__((used)) static void
nic_disable_msix(struct nicpf *nic)
{
 if (nic->msix_enabled) {
  pci_release_msi(nic->dev);
  nic->msix_enabled = 0;
  nic->num_vec = 0;
 }

 bus_release_resource(nic->dev, SYS_RES_MEMORY,
     rman_get_rid(nic->msix_table_res), nic->msix_table_res);
}
