
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {int unique_len; int unique_size; int * unique; } ;
struct drm_device {int pci_domain; int pci_bus; int pci_slot; int pci_func; } ;


 int DRM_ERROR (char*) ;
 int DRM_MEM_DRIVER ;
 int EINVAL ;
 int ENOMEM ;
 int M_NOWAIT ;
 int * malloc (int,int ,int ) ;
 int snprintf (int *,int,char*,int,int,int,int) ;

int drm_pci_set_busid(struct drm_device *dev, struct drm_master *master)
{
 int len, ret;
 master->unique_len = 40;
 master->unique_size = master->unique_len;
 master->unique = malloc(master->unique_size, DRM_MEM_DRIVER, M_NOWAIT);
 if (master->unique == ((void*)0))
  return -ENOMEM;


 len = snprintf(master->unique, master->unique_len,
         "pci:%04x:%02x:%02x.%d",
         dev->pci_domain,
         dev->pci_bus,
         dev->pci_slot,
         dev->pci_func);

 if (len >= master->unique_len) {
  DRM_ERROR("buffer overflow");
  ret = -EINVAL;
  goto err;
 } else
  master->unique_len = len;

 return 0;
err:
 return ret;
}
