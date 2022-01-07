
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int pqi_dev; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct cdev {struct pqisrc_softstate* si_drv1; } ;
struct TYPE_4__ {int board_id; int chip_id; int domain; int dev_fn; int bus; } ;
typedef TYPE_2__ pqi_pci_info_t ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int DBG_FUNC (char*,...) ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int pci_get_bus (int ) ;
 int pci_get_device (int ) ;
 int pci_get_domain (int ) ;
 int pci_get_function (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;

__attribute__((used)) static void smartpqi_get_pci_info_ioctl(caddr_t udata, struct cdev *cdev)
{
 struct pqisrc_softstate *softs = cdev->si_drv1;
 device_t dev = softs->os_specific.pqi_dev;
 pqi_pci_info_t *pci_info = (pqi_pci_info_t *)udata;
 uint32_t sub_vendor = 0;
 uint32_t sub_device = 0;
 uint32_t vendor = 0;
 uint32_t device = 0;

 DBG_FUNC("IN udata = %p cdev = %p\n", udata, cdev);

 pci_info->bus = pci_get_bus(dev);
 pci_info->dev_fn = pci_get_function(dev);
 pci_info->domain = pci_get_domain(dev);
 sub_vendor = pci_read_config(dev, PCIR_SUBVEND_0, 2);
 sub_device = pci_read_config(dev, PCIR_SUBDEV_0, 2);
 pci_info->board_id = ((sub_device << 16) & 0xffff0000) | sub_vendor;
 vendor = pci_get_vendor(dev);
 device = pci_get_device(dev);
 pci_info->chip_id = ((device << 16) & 0xffff0000) | vendor;
 DBG_FUNC("OUT\n");
}
