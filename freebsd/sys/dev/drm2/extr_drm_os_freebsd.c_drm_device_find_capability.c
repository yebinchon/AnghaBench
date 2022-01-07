
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;


 scalar_t__ pci_find_cap (int ,int,int *) ;

__attribute__((used)) static int
drm_device_find_capability(struct drm_device *dev, int cap)
{

 return (pci_find_cap(dev->dev, cap, ((void*)0)) == 0);
}
