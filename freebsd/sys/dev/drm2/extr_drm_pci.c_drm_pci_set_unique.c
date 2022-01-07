
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_unique {size_t unique_len; int unique; } ;
struct drm_master {size_t unique_len; size_t unique_size; char* unique; } ;
struct drm_device {int pci_domain; int pci_bus; int pci_slot; int pci_func; } ;


 int DRM_MEM_DRIVER ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int M_WAITOK ;
 scalar_t__ copy_from_user (char*,int ,size_t) ;
 char* malloc (size_t,int ,int ) ;
 int sscanf (char*,char*,int*,int*,int*) ;

int drm_pci_set_unique(struct drm_device *dev,
         struct drm_master *master,
         struct drm_unique *u)
{
 int domain, bus, slot, func, ret;

 master->unique_len = u->unique_len;
 master->unique_size = u->unique_len + 1;
 master->unique = malloc(master->unique_size, DRM_MEM_DRIVER, M_WAITOK);
 if (!master->unique) {
  ret = -ENOMEM;
  goto err;
 }

 if (copy_from_user(master->unique, u->unique, master->unique_len)) {
  ret = -EFAULT;
  goto err;
 }

 master->unique[master->unique_len] = '\0';




 ret = sscanf(master->unique, "PCI:%d:%d:%d", &bus, &slot, &func);
 if (ret != 3) {
  ret = -EINVAL;
  goto err;
 }

 domain = bus >> 8;
 bus &= 0xff;

 if ((domain != dev->pci_domain) ||
     (bus != dev->pci_bus) ||
     (slot != dev->pci_slot) ||
     (func != dev->pci_func)) {
  ret = -EINVAL;
  goto err;
 }
 return 0;
err:
 return ret;
}
