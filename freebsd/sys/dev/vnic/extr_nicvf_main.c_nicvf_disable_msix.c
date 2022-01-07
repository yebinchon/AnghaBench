
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {scalar_t__ num_vec; scalar_t__ msix_enabled; int dev; } ;


 int pci_release_msi (int ) ;

__attribute__((used)) static void
nicvf_disable_msix(struct nicvf *nic)
{

 if (nic->msix_enabled) {
  pci_release_msi(nic->dev);
  nic->msix_enabled = 0;
  nic->num_vec = 0;
 }
}
