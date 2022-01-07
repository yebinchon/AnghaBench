
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmar_unit {int dummy; } ;
struct dmar_ctx {int dummy; } ;
typedef int device_t ;
typedef int ACPI_DMAR_PCI_PATH ;


 int dmar_dev_depth (int ) ;
 int dmar_dev_path (int ,int*,int *,int) ;
 struct dmar_ctx* dmar_get_ctx_for_dev1 (struct dmar_unit*,int ,int ,int,int,int *,int,int,int) ;
 int pci_get_domain (int ) ;

struct dmar_ctx *
dmar_get_ctx_for_dev(struct dmar_unit *dmar, device_t dev, uint16_t rid,
    bool id_mapped, bool rmrr_init)
{
 int dev_domain, dev_path_len, dev_busno;

 dev_domain = pci_get_domain(dev);
 dev_path_len = dmar_dev_depth(dev);
 ACPI_DMAR_PCI_PATH dev_path[dev_path_len];
 dmar_dev_path(dev, &dev_busno, dev_path, dev_path_len);
 return (dmar_get_ctx_for_dev1(dmar, dev, rid, dev_domain, dev_busno,
     dev_path, dev_path_len, id_mapped, rmrr_init));
}
