
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int pci_domain; } ;



__attribute__((used)) static int drm_get_pci_domain(struct drm_device *dev)
{
 return dev->pci_domain;
}
