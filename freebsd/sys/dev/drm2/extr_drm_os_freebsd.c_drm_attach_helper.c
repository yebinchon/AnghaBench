
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_driver {int dummy; } ;
struct drm_device {int id_entry; } ;
typedef int drm_pci_id_list_t ;
typedef int device_t ;


 struct drm_device* device_get_softc (int ) ;
 int drm_find_description (int,int,int const*) ;
 int drm_get_pci_dev (int ,struct drm_device*,struct drm_driver*) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;

int
drm_attach_helper(device_t kdev, const drm_pci_id_list_t *idlist,
    struct drm_driver *driver)
{
 struct drm_device *dev;
 int vendor, device;
 int ret;

 dev = device_get_softc(kdev);

 vendor = pci_get_vendor(kdev);
 device = pci_get_device(kdev);
 dev->id_entry = drm_find_description(vendor, device, idlist);

 ret = drm_get_pci_dev(kdev, dev, driver);

 return (ret);
}
